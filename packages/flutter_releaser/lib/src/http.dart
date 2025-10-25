import "package:flutter_releaser/flutter_releaser.dart";
import "package:http/http.dart";

Future<StreamedResponse> retrieveApplicationArchive(
  FlutterReleaserSettings settings,
) async {
  final client = Client();
  final request = Request("GET", Uri.parse(settings.applicationArchiveUrl));
  return client.send(request);
}
