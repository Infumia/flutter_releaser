import "package:plugin_platform_interface/plugin_platform_interface.dart";

import "package:flutter_releaser/flutter_releaser_method_channel.dart";

abstract class FlutterReleaserPlatform extends PlatformInterface {
  FlutterReleaserPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterReleaserPlatform _instance = MethodChannelFlutterReleaser();

  static FlutterReleaserPlatform get instance => _instance;

  static set instance(FlutterReleaserPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }
}
