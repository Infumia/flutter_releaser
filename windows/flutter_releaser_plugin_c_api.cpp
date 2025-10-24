#include "include/flutter_releaser/flutter_releaser_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_releaser_plugin.h"

void FlutterReleaserPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_releaser::FlutterReleaserPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
