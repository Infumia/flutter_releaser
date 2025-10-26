import "dart:async";
import "dart:io";

import "package:flutter_releaser/src/exceptions.dart";
import "package:path/path.dart" as path;
import "package:flutter/foundation.dart";
import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser/src/files.dart";
import "package:flutter_releaser/src/models.dart";
import "package:flutter_releaser/src/progress.dart";

Future<File> downloadVersion(
  FlutterReleaserSettings settings,
  Version version, [
  ValueNotifier<DownloadProgress?>? downloadProgressNotifier,
]) async {
  final directory = await createTemporaryDirectory(settings);
  final downloadPath = path.join(directory.path, "download.zip");

  await settings.requester.download(
    settings,
    downloadPath,
    uri: version.url,
    progress: (received, total) {
      if (downloadProgressNotifier != null) {
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
      }
    },
  );

  final downloadZip = File(downloadPath);
  if (!downloadZip.existsSync()) {
    throw CouldNotDownloadFile("Could not download version '$version'");
  }

  final finished = downloadProgressNotifier?.value;
  if (finished != null) {
    downloadProgressNotifier?.value = finished.copyWith(finished: true);
  }

  return downloadZip;
}
