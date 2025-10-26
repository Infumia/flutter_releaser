import "dart:convert";
import "dart:io";

import "package:flutter_releaser/flutter_releaser.dart";
import "package:http/http.dart";

class HttpRequesterHttp implements HttpRequester {
  const HttpRequesterHttp();

  @override
  Future<T> get<T>(
    FlutterReleaserSettings settings, {
    String? url,
    Uri? uri,
  }) async {
    final Uri location = toUri(url: url, uri: uri);

    final client = Client();
    try {
      final response = await client.get(location);
      if (response.statusCode == 200) {
        return jsonDecode(response.body) as T;
      } else {
        throw HttpException("Received '${response.statusCode}' status code");
      }
    } on Exception catch (e, s) {
      settings.logError(
        "An error occurred while sending request to '$url'",
        e,
        s,
      );
      rethrow;
    } finally {
      client.close();
    }
  }

  @override
  Future<void> download(
    FlutterReleaserSettings settings,
    String path, {
    String? url,
    Uri? uri,
    ProgressCallback? progress,
  }) async {
    final Uri location = toUri(url: url, uri: uri);

    final client = Client();
    try {
      final response = await client.send(Request("GET", location));
      if (response.statusCode == 200) {
        await response.stream.pipe(File(path).openWrite());
      } else {
        throw HttpException("Received '${response.statusCode}' status code");
      }
    } on Exception catch (e, s) {
      settings.logError(
        "An error occurred while sending request to '$url'",
        e,
        s,
      );
      rethrow;
    } finally {
      client.close();
    }
  }
}
