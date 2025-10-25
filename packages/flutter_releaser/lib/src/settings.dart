import "package:flutter_releaser/src/logger.dart";

class FlutterReleaserSettings {
  final String applicationArchiveUrl;
  final Logger logger;

  FlutterReleaserSettings({
    required this.applicationArchiveUrl,
    this.logger = const LoggerPrint(),
  });
}
