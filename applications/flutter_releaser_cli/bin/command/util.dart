
import "dart:convert";
import "dart:io";

import "package:path/path.dart" as path;
import "package:talker/talker.dart";

Future<int> runFlutterCommand({
  required List<String> commandAndArguments,
  required Talker talker,
}) async {
  final flutterPath = Platform.environment["FLUTTER_ROOT"];

  if (flutterPath == null || flutterPath.isEmpty) {
    throw Exception("FLUTTER_ROOT environment variable is not set");
  }

  var flutterExecutable = "flutter";
  if (Platform.isWindows) {
    flutterExecutable += ".bat";
  }

  final flutterBinPath = path.join(flutterPath, "bin", flutterExecutable);

  if (!File(flutterBinPath).existsSync()) {
    throw Exception("Flutter executable not found at path: $flutterBinPath");
  }

  final command = <String>[flutterBinPath, ...commandAndArguments];

  talker.info("Executing build command: ${command.join(' ')}");

  final process = await Process.start(
    command.first,
    command.sublist(1),
  );

  process.stdout.transform(utf8.decoder).listen(stdout.write);
  process.stderr.transform(utf8.decoder).listen(stderr.write);

  return process.exitCode;
}
