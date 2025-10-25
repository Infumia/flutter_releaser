import "package:flutter_releaser/flutter_releaser.dart";

void main() {
  final controller = UpdateController(
    settings: FlutterReleaserSettings(
      applicationArchiveUrl: "https://infumia.com/application-archive.json",
    ),
  );
}
