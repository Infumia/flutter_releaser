import "package:flutter_releaser_flutter/src/flutter_releaser_platform_interface.dart";

export "package:flutter_releaser_flutter/src/controller.dart";
export "package:flutter_releaser_flutter/src/ref.dart";

class FlutterReleaserPlugin {
  const FlutterReleaserPlugin();

  Future<void> restartApplication() =>
      FlutterReleaserPlatform.instance.restartApplication();
}
