import "dart:io";

import "package:dio/dio.dart" hide Headers;
import "package:flutter_releaser/flutter_releaser.dart" hide ProgressCallback;

class HttpRequesterDio implements HttpRequester {
  final Dio _dio;

  const HttpRequesterDio(this._dio);

  @override
  Future<T> get<T>(
    FlutterReleaserSettings settings,
    Uri uri, {
    Headers? headers,
  }) async {
    final response = await _dio.getUri<T>(
      uri,
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
  Future<T> put<T>(
    FlutterReleaserSettings settings,
    Uri uri, {
    Object? data,
    Headers? headers,
  }) async {
    final response = await _dio.putUri<T>(
      uri,
      data: data,
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
    String path,
    Uri uri, {
    Headers? headers,
    ProgressCallback? progress,
  }) async {
    await _dio.downloadUri(
      uri,
      path,
      options: Options(responseType: ResponseType.stream, headers: headers),
      onReceiveProgress: progress,
    );
  }

  @override
  Future<void> upload(
    FlutterReleaserSettings settings,
    String path,
    Uri uri, {
    Headers? headers,
    ProgressCallback? progress,
  }) async {
    await _dio.putUri<dynamic>(
      uri,
      data: File(path).openRead(),
      options: Options(headers: headers),
      onSendProgress: progress,
    );
  }
}
