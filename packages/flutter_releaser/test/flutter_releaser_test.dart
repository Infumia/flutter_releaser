import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser/src/models.dart";

Future<void> main() async {
  final archive = ApplicationArchive(
    name: "fake application",
    description: "fake application description",
    versions: [
      Version(
        version: "1.0.0",
        platform: Platform.windows,
        url: Uri.parse("https://infumia.com/application-v1.0.0-windows.zip"),
      ),
    ],
  );

  final controller = UpdateController(
    settings: FlutterReleaserSettings(
      applicationArchiveUrl: "https://infumia.com/application-archive.json",
    ),
  );

  final newVersion = await controller.check();
}
