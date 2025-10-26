import "dart:async";
import "dart:io";

import "package:flutter/foundation.dart";
import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser/src/download.dart";
import "package:flutter_releaser/src/extract.dart";
import "package:flutter_releaser/src/models.dart";
import "package:flutter_releaser/src/progress.dart";
import "package:flutter_releaser/src/version.dart";
import "package:synchronized/synchronized.dart";

class UpdateController extends ChangeNotifier {
  final FlutterReleaser _plugin = const FlutterReleaser();
  final ValueNotifier<Version?> nextVersionNotifier = ValueNotifier(null);
  final ValueNotifier<DownloadProgress?> downloadProgressNotifier =
      ValueNotifier(null);
  final _lock = Lock();

  final FlutterReleaserSettings settings;

  UpdateController({required this.settings}) {
    nextVersionNotifier.addListener(notifyListeners);
    downloadProgressNotifier.addListener(notifyListeners);
  }

  Future<Version?> check() => _lock.synchronized(() async {
    final newVersion = await retrieveNewVersion(settings);
    nextVersionNotifier.value = newVersion;
    return newVersion;
  });

  Future<File> download(Version version) => _lock.synchronized(
    () => downloadVersion(settings, version, downloadProgressNotifier),
  );

  Future<void> extract(File file) =>
      _lock.synchronized(() => extractToUpdate(settings, file));

  Future<void> restartToUpdate() => _plugin.restartApplication();
}
