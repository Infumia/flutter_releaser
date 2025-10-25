import "dart:convert";
import "dart:io" as io;

import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser/src/models.dart";
import "package:http/http.dart" as http;
import "package:package_info_plus/package_info_plus.dart";

Future<Item?> checkVersion(FlutterReleaserSettings settings) async {
  final logger = settings.logger;
  final executablePath = io.Platform.resolvedExecutable;
  final directoryPath = executablePath.substring(
    0,
    executablePath.lastIndexOf(io.Platform.pathSeparator),
  );
  var directory = io.Directory(directoryPath);
  if (io.Platform.isMacOS) {
    directory = directory.parent;
  }

  if (!directory.existsSync()) {
    logger.error("Could not found directory '$directoryPath'");
    return null;
  }

  final temporaryDirectory = await io.Directory.systemTemp.createTemp(
    "flutter_releaser",
  );

  logger.debug(
    "Temporary directory '$temporaryDirectory' will be used for flutter_releaser",
  );

  final client = http.Client();
  const clientName = "http";

  final request = http.Request(
    "GET",
    Uri.parse(settings.applicationArchiveUrl),
  );
  final response = await client.send(request);

  final outputFile = io.File(
    "${temporaryDirectory.path}${io.Platform.pathSeparator}application-archive.json",
  );

  final sink = outputFile.openWrite();
  try {
    await response.stream.pipe(sink);
  } finally {
    await sink.close();
  }

  logger.debug("Application archive file downloaded to '${outputFile.path}'");

  if (!outputFile.existsSync()) {
    throw Exception("Application archive file does not exist");
  }

  final applicationArchiveString = await outputFile.readAsString();
  final applicationArchive = ApplicationArchive.fromJson(
    jsonDecode(applicationArchiveString) as Map<String, dynamic>
  );

  final versions = applicationArchive.items
      .where((element) => element.platform.name == io.Platform.operatingSystem)
      .toList(growable: false)
      ..sort();
  final latestVersion = versions.firstOrNull;

  if (latestVersion == null) {
    throw Exception("Could not found version for this platform '${io.Platform.operatingSystem}'");
  }

  logger.debug("Latest version for '${applicationArchive.name}' found '${latestVersion.version}'");

  final info = await PackageInfo.fromPlatform();
  final version = info.version;

  return null;
}
