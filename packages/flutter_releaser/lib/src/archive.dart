import "dart:io";

import "package:archive/archive_io.dart";
import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser/src/exceptions.dart";

Future<File> archiveDirectory(
  FlutterReleaserSettings settings,
  Directory directory,
  File outputFile,
) async {
  if (!directory.existsSync()) {
    throw FileNotFoundException("Directory '$directory' not found");
  }
  final encoder = ZipFileEncoder();
  await encoder.zipDirectory(
    directory,
    filename: outputFile.path,
    followLinks: false,
  );
  if (!outputFile.existsSync()) {
    throw FileNotFoundException("Archive file '$outputFile.path' not found");
  }
  return outputFile;
}
