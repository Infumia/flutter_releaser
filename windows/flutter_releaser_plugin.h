#ifndef FLUTTER_PLUGIN_FLUTTER_RELEASER_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_RELEASER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_releaser {

class FlutterReleaserPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterReleaserPlugin();

  virtual ~FlutterReleaserPlugin();

  // Disallow copy and assign.
  FlutterReleaserPlugin(const FlutterReleaserPlugin&) = delete;
  FlutterReleaserPlugin& operator=(const FlutterReleaserPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_releaser

#endif  // FLUTTER_PLUGIN_FLUTTER_RELEASER_PLUGIN_H_
