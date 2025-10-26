import "package:flutter_releaser/src/logger.dart";
import "package:http/http.dart";

class FlutterReleaserSettings {
  final String applicationArchiveUrl;
  final Client Function() clientFactory;
  final Logger logger;

  FlutterReleaserSettings({
    required String applicationArchiveUrl,
    Client Function()? clientFactory,
    Logger logger = const LoggerPrint(),
  }) : this._(applicationArchiveUrl, clientFactory ?? Client.new, logger);

  void logDebug(String message) => logger.debug(message);

  void logError(String message, [Exception? exception, StackTrace? trace]) =>
      logger.error(message, exception, trace);

  FlutterReleaserSettings._(
    this.applicationArchiveUrl,
    this.clientFactory,
    this.logger,
  );
}
