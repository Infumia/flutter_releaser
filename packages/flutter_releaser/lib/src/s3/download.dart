import "dart:io";

import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser/src/files.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:path/path.dart" as path;

part "download.freezed.dart";
part "download.g.dart";

Future<File> downloadS3File(
  FlutterReleaserSettings settings,
  Version version,
  Ref<DownloadProgress?> downloadProgressNotifier,
) async {
  final requester = settings.requester;
  final directory = await createTemporaryDirectory(settings);
  final downloadPath = path.join(directory.path, "download.zip");
  final response = await requester.get<DownloadS3FileResponse>(
    settings,
    apiPath: "/archive/${version.id}?s3=true",
    headers: settings.apiRequestHeadersProvider(),
  );

  final preSignedUri = Uri.parse(response.url);
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

  final file = File(downloadPath);
  if (!file.existsSync()) {
    throw Exception("Could not download version '$version'");
  }

  return file;
}

@freezed
sealed class DownloadS3FileResponse with _$DownloadS3FileResponse {
  const factory DownloadS3FileResponse({
    required NetworkFile file,
    required String url,
    required Headers headers,
  }) = _DownloadS3FileResponse;

  factory DownloadS3FileResponse.fromJson(Map<String, dynamic> json) =>
      _$DownloadS3FileResponseFromJson(json);
}
