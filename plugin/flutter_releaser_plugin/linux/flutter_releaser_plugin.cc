#include "include/flutter_releaser/flutter_releaser_plugin.h"

#include <flutter_linux/flutter_linux.h>
#include <gtk/gtk.h>
#include <sys/utsname.h>
#include <unistd.h>
#include <sys/wait.h>
#include <sys/stat.h>
#include <libgen.h>
#include <iostream>
#include <fstream>
#include <string>
#include <linux/limits.h>

#include "flutter_releaser_plugin_private.h"

bool copy_file(const char *source, const char *destination) {
    char buffer[4096];
    size_t size;

    FILE *source_file = fopen(source, "rb");
    FILE *dest_file = fopen(destination, "wb");

    if (source_file == nullptr || dest_file == nullptr) {
        if (source_file) {
            fclose(source_file);
        }
        if (dest_file) {
            fclose(dest_file);
        }
        return false;
    }

    while ((size = fread(buffer, 1, sizeof(buffer), source_file))) {
        fwrite(buffer, 1, size, dest_file);
    }

    fclose(source_file);
    fclose(dest_file);
    return true;
}

void createUpdateScript(const char *executable_path) {
    char *temp_path = strdup(executable_path);
    const char *base_name = basename(temp_path);

    const std::string script =
      "#!/bin/bash\n"
      "sleep 1\n"
      "cp -R .update/* .\n"
      "chmod +x " +
      std::string(executable_path) + "\n"
                                     "./" +
      std::string(base_name) + " &\n"
                               "sleep 1\n"
                               "rm update_script.sh\n"
                               "rm -rf .update\n"
                               "exit\n";

    FILE *file = fopen("update_script.sh", "w");
    if (file) {
        fprintf(file, "%s", script.c_str());
        fclose(file);
        chmod("update_script.sh", 0755);
        g_print("Update script created.\n");
    }

    free(temp_path);
}

void runUpdateScript() {
    pid_t pid = fork();

    if (pid == 0) {
        execl("/bin/sh", "sh", "update_script.sh", NULL);
        _exit(1);
    } else if (pid < 0) {
        g_print("Failed to run the update script.\n");
    }
}

#define FLUTTER_RELEASER_PLUGIN(obj) \
  (G_TYPE_CHECK_INSTANCE_CAST((obj), flutter_releaser_plugin_get_type(), \
                              FlutterReleaserPlugin))

struct _FlutterReleaserPlugin {
  GObject parent_instance;
};

G_DEFINE_TYPE(FlutterReleaserPlugin, flutter_releaser_plugin, g_object_get_type())

// Called when a method call is received from Flutter.
static void flutter_releaser_plugin_handle_method_call(
    FlutterReleaserPlugin* self,
    FlMethodCall* method_call) {
  g_autoptr(FlMethodResponse) response = nullptr;

  const gchar* method = fl_method_call_get_name(method_call);

    if (strcmp(method, "restartApplication") == 0) {
        printf("Restarting the application...\n");

        char executable_path[PATH_MAX];
        ssize_t len = readlink("/proc/self/exe", executable_path, sizeof(executable_path) - 1);
        if (len != -1) {
            executable_path[len] = '\0';
            printf("Executable path: %s\n", executable_path);

            createUpdateScript(executable_path);
            runUpdateScript();

            exit(0);
        }
    } else {
        response = FL_METHOD_RESPONSE(fl_method_not_implemented_response_new());
    }

  fl_method_call_respond(method_call, response, nullptr);
}

static void flutter_releaser_plugin_dispose(GObject* object) {
  G_OBJECT_CLASS(flutter_releaser_plugin_parent_class)->dispose(object);
}

static void flutter_releaser_plugin_class_init(FlutterReleaserPluginClass* klass) {
  G_OBJECT_CLASS(klass)->dispose = flutter_releaser_plugin_dispose;
}

static void flutter_releaser_plugin_init(FlutterReleaserPlugin* self) {}

static void method_call_cb(FlMethodChannel* channel, FlMethodCall* method_call,
                           gpointer user_data) {
  FlutterReleaserPlugin* plugin = FLUTTER_RELEASER_PLUGIN(user_data);
  flutter_releaser_plugin_handle_method_call(plugin, method_call);
}

void flutter_releaser_plugin_register_with_registrar(FlPluginRegistrar* registrar) {
  FlutterReleaserPlugin* plugin = FLUTTER_RELEASER_PLUGIN(
      g_object_new(flutter_releaser_plugin_get_type(), nullptr));

  g_autoptr(FlStandardMethodCodec) codec = fl_standard_method_codec_new();
  g_autoptr(FlMethodChannel) channel =
      fl_method_channel_new(fl_plugin_registrar_get_messenger(registrar),
                            "flutter_releaser",
                            FL_METHOD_CODEC(codec));
  fl_method_channel_set_method_call_handler(channel, method_call_cb,
                                            g_object_ref(plugin),
                                            g_object_unref);

  g_object_unref(plugin);
}
