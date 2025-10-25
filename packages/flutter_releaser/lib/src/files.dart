import "dart:io";

import "package:flutter_releaser/flutter_releaser.dart";
import "package:http/http.dart";

Future<Directory?> retrieveExecutableDirectory(
  FlutterReleaserSettings settings,
) async {
  final executablePath = Platform.resolvedExecutable;
  final directoryPath = executablePath.substring(
    0,
    executablePath.lastIndexOf(Platform.pathSeparator),
  );
  var directory = Directory(directoryPath);
  if (Platform.isMacOS) {
    directory = directory.parent;
  }

  if (!directory.existsSync()) {
    settings.logger.error("Could not found directory '$directoryPath'");
    return null;
  }

  return directory;
}

Future<Directory> createTemporaryDirectory(
  FlutterReleaserSettings settings,
) async {
  final temporaryDirectory = await Directory.systemTemp.createTemp(
    "flutter_releaser",
  );

  settings.logger.debug(
    "Temporary directory '$temporaryDirectory' will be used for flutter_releaser",
  );

  return temporaryDirectory;
}

Future<File> writeApplicationArchive(
  FlutterReleaserSettings settings,
  StreamedResponse response,
) async {
  final temporaryDirectory = await createTemporaryDirectory(settings);
  final outputFile = File(
    "${temporaryDirectory.path}${Platform.pathSeparator}application-archive.json",
  );

  final sink = outputFile.openWrite();
  try {
    await response.stream.pipe(sink);
  } finally {
    await sink.close();
  }

  settings.logger.debug(
    "Application archive file downloaded to '${outputFile.path}'",
  );

  if (!outputFile.existsSync()) {
    throw Exception("Application archive file does not exist");
  }

  return outputFile;
}
