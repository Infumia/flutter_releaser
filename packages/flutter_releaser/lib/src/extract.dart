import "dart:io";

import "package:archive/archive_io.dart";
import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser/src/files.dart";
import "package:path/path.dart" as path;

Future<void> extractToUpdate(
  FlutterReleaserSettings settings,
  File archive,
) async {
  final directory = retrieveExecutableDirectory(settings);
  if (directory == null) {
    return;
  }
  final updatePath = path.join(directory.path, ".update");
  final updateDirectory = Directory(updatePath);
  if (updateDirectory.existsSync()) {
    await updateDirectory.delete(recursive: true);
  }
  await updateDirectory.create(recursive: true);
  await extractFileToDisk(archive.path, updatePath);
}
