import "package:flutter_releaser/flutter_releaser_platform_interface.dart";

class FlutterReleaser {
  const FlutterReleaser();

  Future<String?> getPlatformVersion() =>
      FlutterReleaserPlatform.instance.getPlatformVersion();
}
