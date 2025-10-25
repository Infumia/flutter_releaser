import "dart:async";

import "package:flutter/foundation.dart";
import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser/src/models.dart";
import "package:flutter_releaser/src/progress.dart";
import "package:flutter_releaser/src/version.dart";

class UpdateController extends ChangeNotifier {
  final FlutterReleaserSettings settings;

  Version? get nextVersion => _nextVersion;
  Version? _nextVersion;

  DownloadProgress? get downloadProgress => _downloadProgress;
  DownloadProgress? _downloadProgress;

  StreamSubscription<DownloadProgress>? _subscription;

  UpdateController({required this.settings});

  @override
  Future<void> dispose() async {
    super.dispose();

    await _subscription?.cancel();
  }

  Future<Version?> check() => retrieveNewVersion(settings);

  Future<Version?> checkAndNotify() async {
    final newVersion = await check();

    if (newVersion != null) {
      _nextVersion = newVersion;
      notifyListeners();
    } else if (_nextVersion != null) {
      _nextVersion = null;
      notifyListeners();
    }

    return newVersion;
  }

  Future<Stream<DownloadProgress>> download() async => const Stream.empty();

  Future<void> downloadAndNotify() async {
    await _subscription?.cancel();

    final stream = await download();
    _subscription = stream.listen(
      (event) {
        _downloadProgress = event;
        notifyListeners();
      },
      onDone: () {
        _downloadProgress = null;
        notifyListeners();
      },
      cancelOnError: true,
    );
  }
}
