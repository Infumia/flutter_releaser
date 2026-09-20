import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser/src/s3/upload.dart";

Future<int> uploadVersion(
  FlutterReleaserSettings settings,
  UploadVersionRequest request,
  Ref<UploadProgress?> uploadProgressRef,
) async {
  final versionId = await switch (settings.fileStorage) {
    FileStorage.s3 => uploadS3File(settings, request, uploadProgressRef),
  };

  uploadProgressRef.value = uploadProgressRef.value?.copyWith(finished: true);

  return versionId;
}

Future<void> uploadInstallerFile(
  FlutterReleaserSettings settings,
  int versionId,
  String installerPath,
  Ref<UploadProgress?> uploadProgressRef,
) async {
  await switch (settings.fileStorage) {
    FileStorage.s3 => uploadS3Installer(
      settings,
      versionId,
      installerPath,
      uploadProgressRef,
    ),
  };

  uploadProgressRef.value = uploadProgressRef.value?.copyWith(finished: true);
}

Future<void> confirmVersion(
  FlutterReleaserSettings settings,
  int versionId,
) async {
  await switch (settings.fileStorage) {
    FileStorage.s3 => confirmS3Upload(settings, versionId),
  };
}
