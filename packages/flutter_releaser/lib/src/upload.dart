import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser/src/s3/upload.dart";

Future<void> uploadVersion(
  FlutterReleaserSettings settings,
  UploadVersionRequest request,
  Ref<UploadProgress?> uploadProgressRef,
) async {
  final file = switch (settings.fileStorage) {
    FileStorage.s3 => uploadS3File(settings, request, uploadProgressRef),
  };

  uploadProgressRef.value = uploadProgressRef.value?.copyWith(finished: true);

  return file;
}
