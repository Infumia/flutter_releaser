import "package:flutter/foundation.dart";
import "package:flutter_releaser/flutter_releaser.dart";

class UpdateController extends ChangeNotifier {
  final FlutterReleaserSettings settings;

  UpdateController({required this.settings});
}
