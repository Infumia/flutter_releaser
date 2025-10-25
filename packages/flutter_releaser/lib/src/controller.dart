import "package:flutter/foundation.dart";
import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser/src/check.dart";
import "package:flutter_releaser/src/models.dart";

class UpdateController extends ChangeNotifier {
  final FlutterReleaserSettings settings;

  UpdateController({required this.settings});

  Future<Version?> check() => checkVersion(settings);
}
