import "package:flutter/services.dart";
import "package:flutter_releaser_flutter/src/flutter_releaser_platform_interface.dart";

class MethodChannelFlutterReleaser extends FlutterReleaserPlatform {
  final methodChannel = const MethodChannel("flutter_releaser_plugin");

  @override
  Future<void> restartApplication() async {
    await methodChannel.invokeMethod<void>("restartApplication");
  }
}
