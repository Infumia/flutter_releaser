import "package:flutter_releaser/flutter_releaser.dart";
import "package:http/http.dart";

Future<StreamedResponse> retrieveApplicationArchive(
  FlutterReleaserSettings settings,
) async {
  final request = Request("GET", Uri.parse(settings.applicationArchiveUrl));
  try {
    return await settings.client.send(request);
  } on Exception catch (e, s) {
    settings.logError(
      "An error occurred while sending request to '${settings.applicationArchiveUrl}'",
      e,
      s,
    );
    rethrow;
  }
}
