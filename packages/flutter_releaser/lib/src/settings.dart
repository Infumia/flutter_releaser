import "package:flutter_releaser/flutter_releaser.dart";

class FlutterReleaserSettings {
  final String applicationArchiveUrl;
  final HttpRequester requester;
  final Logger logger;

  FlutterReleaserSettings({
    required String applicationArchiveUrl,
    required HttpRequester requester,
    Logger logger = const LoggerPrint(),
  }) : this._(applicationArchiveUrl, requester, logger);

  void logDebug(String message) => logger.debug(message);

  void logError(String message, [Exception? exception, StackTrace? trace]) =>
      logger.error(message, exception, trace);

  FlutterReleaserSettings._(
    this.applicationArchiveUrl,
    this.requester,
    this.logger,
  );
}
