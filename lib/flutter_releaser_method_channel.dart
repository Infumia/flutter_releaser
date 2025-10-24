import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_releaser_platform_interface.dart';

/// An implementation of [FlutterReleaserPlatform] that uses method channels.
class MethodChannelFlutterReleaser extends FlutterReleaserPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_releaser');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
