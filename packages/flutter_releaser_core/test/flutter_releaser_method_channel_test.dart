import "package:flutter/services.dart";
import "package:flutter_releaser_core/flutter_releaser_method_channel.dart";
import "package:flutter_test/flutter_test.dart";

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final MethodChannelFlutterReleaser platform = MethodChannelFlutterReleaser();
  const MethodChannel channel = MethodChannel("flutter_releaser");

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (methodCall) async => "42");
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  test("getPlatformVersion", () async {
    expect(await platform.getPlatformVersion(), "42");
  });
}
