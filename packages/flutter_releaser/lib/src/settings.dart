import "package:flutter_releaser/src/logger.dart";

class FlutterReleaserSettings {
  final String applicationArchiveUrl;
  final Logger logger;

  FlutterReleaserSettings({
    required this.applicationArchiveUrl,
    this.logger = const LoggerPrint(),
  });

  void logDebug(String message) => logger.debug(message);

  void logError(String message, [Exception? exception, StackTrace? trace]) =>
      logger.error(message, exception, trace);
}
