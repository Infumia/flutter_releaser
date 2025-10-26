import "package:flutter/foundation.dart";
import "package:flutter/services.dart";
import "package:flutter_releaser/flutter_releaser_platform_interface.dart";

class MethodChannelFlutterReleaser extends FlutterReleaserPlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel("flutter_releaser");

  @override
  Future<void> restartApplication() async {
    await methodChannel.invokeMethod<void>("restartApplication");
  }
}
