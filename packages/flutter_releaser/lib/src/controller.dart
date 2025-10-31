import "dart:async";
import "dart:io";

import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser/src/download.dart";
import "package:flutter_releaser/src/extract.dart";
import "package:flutter_releaser/src/s3/upload.dart";
import "package:flutter_releaser/src/upload.dart";
import "package:flutter_releaser/src/version.dart";
import "package:synchronized/synchronized.dart";

class UpdateController {
  final _lock = Lock();

  final FlutterReleaserSettings settings;

  UpdateController({required this.settings});

  Future<Version?> check(String currentVersion) => _lock.synchronized(
    () async => retrieveNewVersion(settings, currentVersion),
  );

  Future<File> download(
    Version version,
    Ref<DownloadProgress?> downloadProgressRef,
  ) => _lock.synchronized(
    () => downloadVersion(settings, version, downloadProgressRef),
  );

  Future<void> extract(File file) =>
      _lock.synchronized(() => extractToUpdate(settings, file));

  Future<void> upload(
    String version,
    String archivePath,
    TargetPlatform platform,
    Ref<UploadProgress?> uploadProgressRef, {
    bool mandatory = true,
    List<Change>? changes,
  }) async => _lock.synchronized(
    () => uploadVersion(
      settings,
      UploadVersionRequest(
        version: version,
        archivePath: archivePath,
        platform: platform,
        mandatory: mandatory,
        changes: changes ?? const [],
      ),
      uploadProgressRef,
    ),
  );
}
