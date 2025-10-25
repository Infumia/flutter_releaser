import "dart:convert";

import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser/src/http.dart";
import "package:flutter_releaser/src/models.dart";
import "package:flutter_releaser/src/files.dart";
import "package:flutter_releaser/src/version.dart";

Future<Version?> checkVersion(FlutterReleaserSettings settings) async {
  final directory = await retrieveExecutableDirectory(settings);
  if (directory == null) {
    return null;
  }

  final response = await retrieveApplicationArchive(settings);

  final outputFile = await writeApplicationArchive(settings, response);

  final applicationArchiveString = await outputFile.readAsString();
  final applicationArchive = ApplicationArchive.fromJson(
    jsonDecode(applicationArchiveString) as Map<String, dynamic>,
  );

  final newVersion = await extractNewVersion(settings, applicationArchive);
  if (newVersion == null) {
    return null;
  }

  return null;
}
