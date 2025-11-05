import "dart:convert";
import "dart:io";

import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser/src/extensions.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:path/path.dart" as path;

part "upload.freezed.dart";
part "upload.g.dart";

Future<void> uploadS3File(
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

  final response = await requester.put<UploadS3FileResponse>(
    settings,
    apiPath: "/archive?s3=true",
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

  await requester.upload(
    settings,
    archivePath,
    uri: Uri.parse(response.url),
    headers: response.headers,
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

  await requester.put<void>(settings, apiPath: "/archive/${response.id}");
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
