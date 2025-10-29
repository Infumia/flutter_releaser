import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser/src/models.dart";

class FlutterReleaserSettings {
  final Uri apiUri;
  final HttpRequester requester;
  final Logger logger;
  final FileStorage fileStorage;

  FlutterReleaserSettings({
    required Uri apiUri,
    required HttpRequester requester,
    FileStorage fileStorage = FileStorage.s3,
    Logger logger = const LoggerPrint(),
  }) : this._(apiUri, requester, logger, fileStorage);

  void logDebug(String message) => logger.debug(message);

  void logError(String message, [Exception? exception, StackTrace? trace]) =>
      logger.error(message, exception, trace);

  FlutterReleaserSettings._(
    this.apiUri,
    this.requester,
    this.logger,
    this.fileStorage,
  );
}
