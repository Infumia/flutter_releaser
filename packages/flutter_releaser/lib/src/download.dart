import "dart:async";
import "dart:io";

import "package:flutter_releaser/src/s3/download.dart";
import "package:flutter_releaser/flutter_releaser.dart";

Future<File> downloadVersion(
  FlutterReleaserSettings settings,
  Version version,
  Ref<DownloadProgress?> downloadProgressRef,
) async {
  final file = switch (settings.fileStorage) {
    FileStorage.s3 => downloadS3File(settings, version, downloadProgressRef),
  };

  downloadProgressRef.value = downloadProgressRef.value?.copyWith(
    finished: true,
  );

  return file;
}
