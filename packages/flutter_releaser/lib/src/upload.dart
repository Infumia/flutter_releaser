import "package:flutter/foundation.dart";
import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser/src/models.dart";
import "package:flutter_releaser/src/progress.dart";
import "package:flutter_releaser/src/s3/upload.dart";

Future<void> uploadVersion(
  FlutterReleaserSettings settings,
  UploadVersionRequest request,
  ValueNotifier<UploadProgress?> uploadProgressNotifier,
) async {
  final file = switch (settings.fileStorage) {
    FileStorage.s3 => uploadS3File(settings, request, uploadProgressNotifier),
  };

  uploadProgressNotifier.value = uploadProgressNotifier.value?.copyWith(
    finished: true,
  );

  return file;
}
