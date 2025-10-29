import "dart:convert";
import "dart:io";

import "package:flutter_releaser/flutter_releaser.dart";
import "package:http/http.dart";

class HttpRequesterHttp implements HttpRequester {
  const HttpRequesterHttp();

  @override
  Future<T> get<T>(
    FlutterReleaserSettings settings, {
    Uri? uri,
    String? apiPath,
    Headers? headers,
  }) async {
    final Uri location = toUri(settings, uri: uri, apiPath: apiPath);

    final client = Client();
    try {
      final response = await client.get(location, headers: headers);
      if (response.statusCode == 200) {
        return jsonDecode(response.body) as T;
      } else {
        throw HttpException("Received '${response.statusCode}' status code");
      }
    } on Exception catch (e, s) {
      settings.logError(
        "An error occurred while sending request to '$location'",
        e,
        s,
      );
      rethrow;
    } finally {
      client.close();
    }
  }

  @override
  Future<T> put<T>(
    FlutterReleaserSettings settings, {
    Object? data,
    Uri? uri,
    String? apiPath,
    Headers? headers,
  }) async {
    final Uri location = toUri(settings, uri: uri, apiPath: apiPath);

    final client = Client();
    try {
      final response = await client.put(location, headers: headers, body: data);
      if (response.statusCode == 200) {
        return jsonDecode(response.body) as T;
      } else {
        throw HttpException("Received '${response.statusCode}' status code");
      }
    } on Exception catch (e, s) {
      settings.logError(
        "An error occurred while sending request to '$location'",
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
    Uri? uri,
    String? apiPath,
    Headers? headers,
    ProgressCallback? progress,
  }) async {
    final Uri location = toUri(settings, uri: uri, apiPath: apiPath);

    final client = Client();
    try {
      final request = Request("GET", location);
      if (headers != null) {
        request.headers.addAll(headers);
      }
      final response = await client.send(request);
      if (response.statusCode == 200) {
        await response.stream.pipe(File(path).openWrite());
      } else {
        throw HttpException("Received '${response.statusCode}' status code");
      }
    } on Exception catch (e, s) {
      settings.logError(
        "An error occurred while sending request to '$location'",
        e,
        s,
      );
      rethrow;
    } finally {
      client.close();
    }
  }

  @override
  Future<void> upload(
    FlutterReleaserSettings settings,
    String path, {
    Uri? uri,
    String? apiPath,
    Headers? headers,
    ProgressCallback? progress,
  }) async {
    final Uri location = toUri(settings, uri: uri, apiPath: apiPath);

    final client = Client();
    try {
      await client.put(location, headers: headers, body: File(path).openRead());
    } on Exception catch (e, s) {
      settings.logError(
        "An error occurred while sending request to '$location'",
        e,
        s,
      );
      rethrow;
    } finally {
      client.close();
    }
  }
}
