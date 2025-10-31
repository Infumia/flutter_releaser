#include "include/flutter_releaser_flutter/flutter_releaser_flutter_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_releaser_flutter_plugin.h"

void FlutterReleaserFlutterPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_releaser_flutter::FlutterReleaserFlutterPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
