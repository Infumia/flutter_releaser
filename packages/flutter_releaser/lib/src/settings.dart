import "package:flutter_releaser/src/logger.dart";
import "package:http/http.dart";

class FlutterReleaserSettings {
  final String applicationArchiveUrl;
  final Client client;
  final Logger logger;

  FlutterReleaserSettings({
    required String applicationArchiveUrl,
    Client? client,
    Logger logger = const LoggerPrint(),
  }) : this._(applicationArchiveUrl, client ?? Client(), logger);

  void logDebug(String message) => logger.debug(message);

  void logError(String message, [Exception? exception, StackTrace? trace]) =>
      logger.error(message, exception, trace);

  FlutterReleaserSettings._(
    this.applicationArchiveUrl,
    this.client,
    this.logger,
  );
}
