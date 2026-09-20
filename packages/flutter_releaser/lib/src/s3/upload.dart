import "dart:convert";
import "dart:io";

import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser/src/extensions.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:path/path.dart" as path;

part "upload.freezed.dart";
part "upload.g.dart";

Future<int> uploadS3File(
  FlutterReleaserSettings settings,
  UploadVersionRequest request,
  Ref<UploadProgress?> uploadProgressRef,
) async {
  final requester = settings.requester;
  final archivePath = request.archivePath;
  final file = File(archivePath);
  if (!file.existsSync()) {
    throw Exception("File '$archivePath' could not found");
  }

  final sizeInBytes = await file.length();
  final name = path.basename(archivePath);
  final sha256 = await file.retrieveSha256();

  final response = await requester.put<Map<String, dynamic>>(
    settings,
    settings.apiUri.resolve("?s3=true"),
    headers: {
      "Content-Type": "application/json",
      ...settings.apiRequestHeadersProvider(),
    },
    data: UploadS3FileRequest(
      name: name,
      sizeInBytes: sizeInBytes,
      sha256: base64Encode(sha256.bytes),
      version: request.version,
      platform: request.platform,
      mandatory: request.mandatory,
      changes: request.changes,
    ).toJson(),
  );
  final uploadResponse = UploadS3FileResponse.fromJson(response);

  await _uploadToPresignedUrl(
    settings,
    archivePath,
    sizeInBytes,
    Uri.parse(uploadResponse.url),
    uploadResponse.headers,
    uploadProgressRef,
  );

  return uploadResponse.id;
}

Future<void> uploadS3Installer(
  FlutterReleaserSettings settings,
  int versionId,
  String installerPath,
  Ref<UploadProgress?> uploadProgressRef,
) async {
  final requester = settings.requester;
  final file = File(installerPath);
  if (!file.existsSync()) {
    throw Exception("File '$installerPath' could not found");
  }

  final sizeInBytes = await file.length();
  final name = path.basename(installerPath);
  final sha256 = await file.retrieveSha256();

  final response = await requester.put<Map<String, dynamic>>(
    settings,
    settings.apiUri.resolve("$versionId/installer/?s3=true"),
    headers: {
      "Content-Type": "application/json",
      ...settings.apiRequestHeadersProvider(),
    },
    data: UploadS3InstallerRequest(
      name: name,
      sizeInBytes: sizeInBytes,
      sha256: base64Encode(sha256.bytes),
    ).toJson(),
  );
  final uploadResponse = UploadS3InstallerResponse.fromJson(response);

  await _uploadToPresignedUrl(
    settings,
    installerPath,
    sizeInBytes,
    Uri.parse(uploadResponse.url),
    uploadResponse.headers,
    uploadProgressRef,
  );
}

Future<void> confirmS3Upload(
  FlutterReleaserSettings settings,
  int versionId,
) async {
  await settings.requester.put<dynamic>(
    settings,
    settings.apiUri.resolve(versionId.toString()),
    headers: settings.apiRequestHeadersProvider(),
  );
}

Future<void> _uploadToPresignedUrl(
  FlutterReleaserSettings settings,
  String filePath,
  int sizeInBytes,
  Uri preSignedUrl,
  Headers headers,
  Ref<UploadProgress?> uploadProgressRef,
) async {
  await settings.requester.upload(
    settings,
    filePath,
    preSignedUrl,
    headers: headers,
    progress: (sent, total) {
      final currentProgress =
          uploadProgressRef.value ??
          UploadProgress(
            totalBytes: sizeInBytes,
            sentBytes: sent,
            finished: false,
          );
      uploadProgressRef.value = currentProgress.copyWith(sentBytes: sent);
    },
  );
}

@freezed
sealed class UploadVersionRequest with _$UploadVersionRequest {
  const factory UploadVersionRequest({
    required String version,
    required String archivePath,
    required TargetPlatform platform,
    required bool mandatory,
    required List<Change> changes,
  }) = _UploadVersionRequest;

  factory UploadVersionRequest.fromJson(Map<String, dynamic> json) =>
      _$UploadVersionRequestFromJson(json);
}

@freezed
sealed class UploadS3FileRequest with _$UploadS3FileRequest {
  const factory UploadS3FileRequest({
    required String name,
    required int sizeInBytes,
    required String sha256,
    required String version,
    required TargetPlatform platform,
    required bool mandatory,
    required List<Change> changes,
  }) = _UploadS3FileRequest;

  factory UploadS3FileRequest.fromJson(Map<String, dynamic> json) =>
      _$UploadS3FileRequestFromJson(json);
}

@freezed
sealed class UploadS3FileResponse with _$UploadS3FileResponse {
  const factory UploadS3FileResponse({
    required int id,
    required String url,
    required Headers headers,
  }) = _UploadS3FileResponse;

  factory UploadS3FileResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadS3FileResponseFromJson(json);
}

@freezed
sealed class UploadS3InstallerRequest with _$UploadS3InstallerRequest {
  const factory UploadS3InstallerRequest({
    required String name,
    required int sizeInBytes,
    required String sha256,
  }) = _UploadS3InstallerRequest;

  factory UploadS3InstallerRequest.fromJson(Map<String, dynamic> json) =>
      _$UploadS3InstallerRequestFromJson(json);
}

@freezed
sealed class UploadS3InstallerResponse with _$UploadS3InstallerResponse {
  const factory UploadS3InstallerResponse({
    required String url,
    required Headers headers,
  }) = _UploadS3InstallerResponse;

  factory UploadS3InstallerResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadS3InstallerResponseFromJson(json);
}
