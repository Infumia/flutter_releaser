import "dart:io";

import "package:dio/dio.dart" hide Headers;
import "package:flutter_releaser/flutter_releaser.dart" hide ProgressCallback;

class HttpRequesterDio implements HttpRequester {
  final Dio _dio;

  const HttpRequesterDio(this._dio);

  @override
  Future<T> get<T>(
    FlutterReleaserSettings settings, {
    Uri? uri,
    String? apiPath,
    Headers? headers,
  }) async {
    final Uri location = toUri(settings, uri: uri, apiPath: apiPath);
    final response = await _dio.getUri<T>(
      location,
      options: Options(headers: headers),
    );
    if (response.statusCode == 200) {
      final data = response.data;
      if (data == null) {
        throw const HttpException("Received no response body");
      } else {
        return data;
      }
    } else {
      throw HttpException("Received '${response.statusCode}' status code");
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
    await _dio.downloadUri(
      location,
      path,
      options: Options(responseType: ResponseType.stream, headers: headers),
      onReceiveProgress: progress,
    );
  }
}
