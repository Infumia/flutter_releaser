import "package:flutter_releaser/flutter_releaser.dart";

typedef ProgressCallback = void Function(int count, int total);

abstract interface class HttpRequester {
  Future<T> get<T>(FlutterReleaserSettings settings, {String? url, Uri? uri});

  Future<void> download(
    FlutterReleaserSettings settings,
    String path, {
    String? url,
    Uri? uri,
    ProgressCallback? progress,
  });
}

Uri toUri({String? url, Uri? uri}) {
  if (uri != null) {
    return uri;
  } else if (url != null) {
    return Uri.parse(url);
  } else {
    throw Exception("Both url and uri cannot be null");
  }
}
