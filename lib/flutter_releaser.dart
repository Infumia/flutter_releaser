
import 'flutter_releaser_platform_interface.dart';

class FlutterReleaser {
  Future<String?> getPlatformVersion() {
    return FlutterReleaserPlatform.instance.getPlatformVersion();
  }
}
