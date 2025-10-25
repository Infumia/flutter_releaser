import "dart:async";

import "package:flutter/foundation.dart";
import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser/src/download.dart";
import "package:flutter_releaser/src/models.dart";
import "package:flutter_releaser/src/progress.dart";
import "package:flutter_releaser/src/version.dart";

class UpdateController {
  final FlutterReleaserSettings settings;

  ValueNotifier<Version?> nextVersionNotifier = ValueNotifier(null);
  ValueNotifier<DownloadProgress?> downloadProgressNotifier = ValueNotifier(
    null,
  );

  UpdateController({required this.settings});

  Future<Version?> check() async {
    final newVersion = await retrieveNewVersion(settings);
    nextVersionNotifier.value = newVersion;
    return newVersion;
  }

  Future<void> download([Version? version]) async {
    final nextVersion = version ?? nextVersionNotifier.value;
    if (nextVersion == null) {
      throw Exception("Could not found next version, please use #check");
    }

    return downloadVersion(settings, nextVersion, downloadProgressNotifier);
  }
}
