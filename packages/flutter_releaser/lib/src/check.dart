import "dart:convert";

import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser/src/files.dart";
import "package:flutter_releaser/src/http.dart";
import "package:flutter_releaser/src/models.dart";
import "package:flutter_releaser/src/version.dart";

Future<Version?> retrieveNewVersion(FlutterReleaserSettings settings) async {
  final directory = retrieveExecutableDirectory(settings);
  if (directory == null) {
    return null;
  }
  final response = await retrieveApplicationArchive(settings);
  final output = await writeApplicationArchive(settings, response);
  final text = await output.readAsString();
  final ApplicationArchive archive;
  try {
    archive = ApplicationArchive.fromJson(
      jsonDecode(text) as Map<String, dynamic>,
    );
  } on Exception catch (e, s) {
    settings.logError(
      "An error occurred while parsing json to create 'ApplicationArchive'",
      e,
      s,
    );
    rethrow;
  }
  return extractNewVersion(settings, archive);
}
