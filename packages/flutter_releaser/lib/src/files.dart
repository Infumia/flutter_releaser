import "dart:io";

import "package:flutter_releaser/flutter_releaser.dart";

Directory? retrieveExecutableDirectory(FlutterReleaserSettings settings) {
  final executable = Platform.resolvedExecutable;
  final path = executable.substring(
    0,
    executable.lastIndexOf(Platform.pathSeparator),
  );
  var directory = Directory(path);
  if (Platform.isMacOS) {
    directory = directory.parent;
  }

  if (!directory.existsSync()) {
    settings.logError("Could not found directory '$path'");
    return null;
  }

  return directory;
}

Future<Directory> createTemporaryDirectory(
  FlutterReleaserSettings settings,
) async {
  final directory = await Directory.systemTemp.createTemp("flutter_releaser");

  if (!directory.existsSync()) {
    throw Exception("Temporary directory does not exist");
  }

  settings.logDebug(
    "Temporary directory '${directory.path}' will be used for flutter_releaser",
  );

  return directory;
}
