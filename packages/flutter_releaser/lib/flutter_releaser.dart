import "package:flutter_releaser/flutter_releaser_platform_interface.dart";

export "package:flutter_releaser/src/controller.dart";
export "package:flutter_releaser/src/settings.dart";
export "package:flutter_releaser/src/logger.dart";
export "package:flutter_releaser/src/requester.dart";

class FlutterReleaser {
  const FlutterReleaser();

  Future<void> restartApplication() =>
      FlutterReleaserPlatform.instance.restartApplication();
}
