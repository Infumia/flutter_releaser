import "package:flutter_releaser/flutter_releaser.dart";

typedef ProgressCallback = void Function(int count, int total);
typedef Headers = Map<String, String>;

abstract interface class HttpRequester {
  Future<T> get<T>(
    FlutterReleaserSettings settings,
    Uri uri, {
    Headers? headers,
  });

  Future<T> put<T>(
    FlutterReleaserSettings settings,
    Uri uri, {
    Object? data,
    Headers? headers,
  });

  Future<void> download(
    FlutterReleaserSettings settings,
    String path,
    Uri uri, {
    Headers? headers,
    ProgressCallback? progress,
  });

  Future<void> upload(
    FlutterReleaserSettings settings,
    String path,
    Uri uri, {
    Headers? headers,
    ProgressCallback? progress,
  });
}
