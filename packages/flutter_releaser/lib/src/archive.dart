import "dart:io";

import "package:archive/archive_io.dart";
import "package:flutter_releaser/flutter_releaser.dart";

Future<File> archiveDirectory(
  FlutterReleaserSettings settings,
  Directory directory,
  String outputFilePath,
) async {
  if (!directory.existsSync()) {
    throw Exception("Directory '$directory' not found");
  }
  final encoder = ZipFileEncoder();
  await encoder.zipDirectory(
    directory,
    filename: outputFilePath,
    followLinks: false,
  );
  final outputFile = File(outputFilePath);
  if (!outputFile.existsSync()) {
    throw Exception("Archive file '$outputFilePath' not found");
  }
  return outputFile;
}
