import "package:plugin_platform_interface/plugin_platform_interface.dart";

import "package:flutter_releaser/flutter_releaser_method_channel.dart";

abstract class FlutterReleaserPlatform extends PlatformInterface {
  /// Constructs a FlutterReleaserPlatform.
  FlutterReleaserPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterReleaserPlatform _instance = MethodChannelFlutterReleaser();

  /// The default instance of [FlutterReleaserPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterReleaser].
  static FlutterReleaserPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterReleaserPlatform] when
  /// they register themselves.
  static set instance(FlutterReleaserPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError("platformVersion() has not been implemented.");
  }
}
