import "dart:async";
import "dart:io";

import "package:flutter_releaser/src/exceptions.dart";
import "package:path/path.dart" as path;
import "package:flutter/foundation.dart";
import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser/src/files.dart";
import "package:flutter_releaser/src/http.dart";
import "package:flutter_releaser/src/models.dart";
import "package:flutter_releaser/src/progress.dart";

Future<File> downloadVersion(
  FlutterReleaserSettings settings,
  Version version, [
  ValueNotifier<DownloadProgress?>? downloadProgressNotifier,
]) async {
  final response = await sendHttpGetRequest(settings, uri: version.url);

  if (response.statusCode != 200) {
    throw HttpException(
      "Failed to download file, status code '${response.statusCode}'",
      uri: version.url,
    );
  }

  final contentLength = response.contentLength ?? 0;
  final directory = await createTemporaryDirectory(settings);
  final downloadPath = path.join(directory.path, "download.zip");
  final downloadZip = File(downloadPath);

  if (!downloadZip.existsSync()) {
    await downloadZip.create(recursive: true);
  }

  final sink = downloadZip.openWrite();
  var received = 0;
  try {
    await response.stream.listen((value) {
      sink.add(value);
      received = value.length;
      if (downloadProgressNotifier != null && contentLength != 0) {
        final currentProgress =
            downloadProgressNotifier.value ??
            DownloadProgress(
              finished: false,
              totalBytes: contentLength,
              receivedBytes: received,
            );
        downloadProgressNotifier.value = currentProgress.copyWith(
          receivedBytes: received,
        );
      }
    }, cancelOnError: true).asFuture<void>();
  } finally {
    await sink.close();
  }

  if (!downloadZip.existsSync()) {
    throw CouldNotDownloadFile("Could not download version '$version'");
  }

  final finished = downloadProgressNotifier?.value;
  if (finished != null) {
    downloadProgressNotifier?.value = finished.copyWith(finished: true);
  }

  return downloadZip;
}
