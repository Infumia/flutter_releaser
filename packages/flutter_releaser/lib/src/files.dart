import "dart:io";

import "package:flutter_releaser/flutter_releaser.dart";
import "package:http/http.dart";

Directory? retrieveExecutableDirectory(FlutterReleaserSettings settings) {
  final executable = Platform.resolvedExecutable;
  final path = executable.substring(
    0,
    executable.lastIndexOf(Platform.pathSeparator),
  );
  var directory = Directory(path);
  if (Platform.isMacOS) {
    directory = directory.parent;
  }

  if (!directory.existsSync()) {
    settings.logError("Could not found directory '$path'");
    return null;
  }

  return directory;
}

Future<File> writeApplicationArchive(
  FlutterReleaserSettings settings,
  StreamedResponse response,
) async {
  final directory = await _createTemporaryDirectory(settings);
  final output = File(
    "${directory.path}${Platform.pathSeparator}application-archive.json",
  );

  final sink = output.openWrite();
  try {
    await response.stream.pipe(sink);
  } on Exception catch (e, s) {
    settings.logError(
      "An error occurred while writing response to a file",
      e,
      s,
    );
    rethrow;
  } finally {
    await sink.close();
  }

  settings.logDebug("Application archive file downloaded to '${output.path}'");

  if (!output.existsSync()) {
    throw Exception("Application archive file does not exist");
  }

  return output;
}

Future<Directory> _createTemporaryDirectory(
  FlutterReleaserSettings settings,
) async {
  final directory = await Directory.systemTemp.createTemp("flutter_releaser");

  settings.logDebug(
    "Temporary directory '$directory' will be used for flutter_releaser",
  );

  return directory;
}
