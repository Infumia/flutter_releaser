import "package:flutter_releaser/flutter_releaser.dart";

typedef ProgressCallback = void Function(int count, int total);
typedef Headers = Map<String, String>;

abstract interface class HttpRequester {
  Future<T> get<T>(
    FlutterReleaserSettings settings, {
    Uri? uri,
    String? apiPath,
    Headers? headers,
  });

  Future<T> put<T>(
    FlutterReleaserSettings settings, {
    Object? data,
    Uri? uri,
    String? apiPath,
    Headers? headers,
  });

  Future<void> download(
    FlutterReleaserSettings settings,
    String path, {
    Uri? uri,
    String? apiPath,
    Headers? headers,
    ProgressCallback? progress,
  });

  Future<void> upload(
    FlutterReleaserSettings settings,
    String path, {
    Uri? uri,
    String? apiPath,
    Headers? headers,
    ProgressCallback? progress,
  });
}

Uri toUri(FlutterReleaserSettings settings, {Uri? uri, String? apiPath}) {
  if (uri != null) {
    return uri;
  } else if (apiPath != null) {
    return settings.apiUri.resolve(apiPath);
  } else {
    throw Exception("Both api path and uri cannot be null");
  }
}
