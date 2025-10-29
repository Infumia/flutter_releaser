import "dart:io";

import "package:flutter/foundation.dart";
import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser/src/exceptions.dart";
import "package:flutter_releaser/src/files.dart";
import "package:flutter_releaser/src/models.dart";
import "package:flutter_releaser/src/progress.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:path/path.dart" as path;

part "download.freezed.dart";
part "download.g.dart";

Future<File> downloadS3File(
  FlutterReleaserSettings settings,
  Version version,
  ValueNotifier<DownloadProgress?> downloadProgressNotifier,
) async {
  final directory = await createTemporaryDirectory(settings);
  final downloadPath = path.join(directory.path, "download.zip");
  final requester = settings.requester;
  final response = await requester.get<DownloadS3FileResponse>(
    settings,
    apiPath: "/archive/${version.id}",
  );

  final preSignedUri = Uri.parse(response.preSignedUrl);
  final headers = response.headers;

  await requester.download(
    settings,
    downloadPath,
    uri: preSignedUri,
    headers: headers,
    progress: (received, total) {
      final currentProgress =
          downloadProgressNotifier.value ??
          DownloadProgress(
            finished: false,
            totalBytes: version.sizeInBytes,
            receivedBytes: received,
          );
      downloadProgressNotifier.value = currentProgress.copyWith(
        receivedBytes: received,
      );
    },
  );

  final downloadZip = File(downloadPath);
  if (!downloadZip.existsSync()) {
    throw CouldNotDownloadFile("Could not download version '$version'");
  }

  return downloadZip;
}

@freezed
sealed class DownloadS3FileResponse with _$DownloadS3FileResponse {
  const factory DownloadS3FileResponse({
    required NetworkFile file,
    required String preSignedUrl,
    required Headers headers,
  }) = _DownloadS3FileResponse;

  factory DownloadS3FileResponse.fromJson(Map<String, dynamic> json) =>
      _$DownloadS3FileResponseFromJson(json);
}
