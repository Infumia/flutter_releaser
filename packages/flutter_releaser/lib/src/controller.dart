import "package:flutter/foundation.dart";
import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser/src/check.dart";
import "package:flutter_releaser/src/models.dart";

class UpdateController extends ChangeNotifier {
  final FlutterReleaserSettings settings;

  Version? get nextVersion => _nextVersion;
  Version? _nextVersion;

  UpdateController({required this.settings});

  Future<Version?> check() => retrieveNewVersion(settings);

  Future<void> checkAndNotify() async {
    final newVersion = await check();

    if (newVersion != null) {
      _nextVersion = newVersion;
      notifyListeners();
    } else if (_nextVersion != null) {
      _nextVersion = null;
      notifyListeners();
    }
  }
}
