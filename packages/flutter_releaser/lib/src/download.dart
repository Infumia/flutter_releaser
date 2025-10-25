import "dart:async";
import "dart:io";

import "package:flutter/foundation.dart";
import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser/src/http.dart";
import "package:flutter_releaser/src/models.dart";
import "package:flutter_releaser/src/progress.dart";

Future<void> downloadVersion(
  FlutterReleaserSettings settings,
  Version version, [
  ValueNotifier<DownloadProgress?>? downloadProgressNotifier,
]) async {
  final (client, response) = await sendHttpGetRequest(settings, uri: version.url);

  if (response.statusCode != 200) {
    client.close();
    throw HttpException("Failed to download file '${version.url}'\n"
        "Status code '${response.statusCode}");
  }


}
