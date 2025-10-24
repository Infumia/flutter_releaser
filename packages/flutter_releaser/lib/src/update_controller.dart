import "package:flutter/foundation.dart";
import "package:flutter_releaser/src/update_settings.dart";

class UpdateController extends ChangeNotifier {
  final UpdateSettings settings;

  UpdateController({required this.settings});
}
