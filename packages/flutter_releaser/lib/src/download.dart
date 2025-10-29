import "dart:async";
import "dart:io";

import "package:flutter_releaser/src/s3/download.dart";
import "package:flutter/foundation.dart";
import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser/src/models.dart";
import "package:flutter_releaser/src/progress.dart";

Future<File> downloadVersion(
  FlutterReleaserSettings settings,
  Version version,
  ValueNotifier<DownloadProgress?> downloadProgressNotifier,
) async {
  final file = switch (settings.fileStorage) {
    FileStorage.s3 => downloadS3File(
      settings,
      version,
      downloadProgressNotifier,
    ),
  };

  downloadProgressNotifier.value = downloadProgressNotifier.value?.copyWith(
    finished: true,
  );

  return file;
}
