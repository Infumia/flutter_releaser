import "package:flutter_releaser_plugin/src/flutter_releaser_platform_interface.dart";

class FlutterReleaserPlugin {
  const FlutterReleaserPlugin();

  Future<void> restartApplication() =>
      FlutterReleaserPlatform.instance.restartApplication();
}
