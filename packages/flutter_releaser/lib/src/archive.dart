import "dart:io";

import "package:archive/archive_io.dart";
import "package:flutter_releaser/flutter_releaser.dart";

Future<File> archiveDirectory(
  FlutterReleaserSettings settings,
  Directory directory,
  File outputFile,
) async {
  if (!directory.existsSync()) {
    throw Exception("Directory '$directory' not found");
  }
  final encoder = ZipFileEncoder();
  await encoder.zipDirectory(
    directory,
    filename: outputFile.path,
    followLinks: false,
  );
  if (!outputFile.existsSync()) {
    throw Exception("Archive file '$outputFile.path' not found");
  }
  return outputFile;
}
