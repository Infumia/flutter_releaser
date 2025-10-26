import "package:flutter_releaser/flutter_releaser.dart";
import "package:http/http.dart";

Future<StreamedResponse> sendHttpGetRequest(
  FlutterReleaserSettings settings, {
  String? url,
  Uri? uri,
}) async {
  final Uri location;
  if (uri != null) {
    location = uri;
  } else if (url != null) {
    location = Uri.parse(url);
  } else {
    throw Exception("Both url and uri cannot be null");
  }

  final request = Request("GET", location);
  final client = settings.clientFactory();
  try {
    return await client.send(request);
  } on Exception catch (e, s) {
    settings.logError(
      "An error occurred while sending request to '$url'",
      e,
      s,
    );
    client.close();
    rethrow;
  }
}
