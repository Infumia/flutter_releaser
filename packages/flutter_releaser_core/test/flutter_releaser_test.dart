import "package:flutter_releaser_core/flutter_releaser.dart";
import "package:flutter_releaser_core/flutter_releaser_method_channel.dart";
import "package:flutter_releaser_core/flutter_releaser_platform_interface.dart";
import "package:flutter_test/flutter_test.dart";
import "package:plugin_platform_interface/plugin_platform_interface.dart";

class MockFlutterReleaserPlatform
    with MockPlatformInterfaceMixin
    implements FlutterReleaserPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value("42");
}

void main() {
  final FlutterReleaserPlatform initialPlatform =
      FlutterReleaserPlatform.instance;

  test("$MethodChannelFlutterReleaser is the default instance", () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterReleaser>());
  });

  test("getPlatformVersion", () async {
    const FlutterReleaser flutterReleaserPlugin = FlutterReleaser();
    final MockFlutterReleaserPlatform fakePlatform =
        MockFlutterReleaserPlatform();
    FlutterReleaserPlatform.instance = fakePlatform;

    expect(await flutterReleaserPlugin.getPlatformVersion(), "42");
  });
}
