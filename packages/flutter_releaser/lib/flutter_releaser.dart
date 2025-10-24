import "package:flutter_releaser/flutter_releaser_platform_interface.dart";

export "package:flutter_releaser/src/update_controller.dart";
export "package:flutter_releaser/src/update_settings.dart";

class FlutterReleaser {
  const FlutterReleaser();

  Future<String?> getPlatformVersion() =>
      FlutterReleaserPlatform.instance.getPlatformVersion();
}
