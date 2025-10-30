import "dart:convert";
import "dart:io";

import "package:pubspec_parse/pubspec_parse.dart";
import "package:path/path.dart" as path;

final availablePlatforms = ["windows", "linux", "macos"];

Future<void> main(List<String> args) async {
  if (args.isEmpty) {
    _print("Platform must be specified ($availablePlatforms)");
    exit(1);
  }

  final platformName = args[0];
  final extraArgs = args.length > 2 ? args.sublist(2) : const <String>[];

  final platform = availablePlatforms
      .where((name) => name == platformName)
      .firstOrNull;

  if (platform == null) {
    _print("Invalid platform '$platformName', ($availablePlatforms)");
    exit(1);
  }

  final pubspecFile = File("pubspec.yaml");
  final pubspecAsString = await pubspecFile.readAsString();
  final pubspec = Pubspec.parse(pubspecAsString);

  final versionAsString = pubspec.version?.toString();
  if (versionAsString == null) {
    _print("Version could not found for '${pubspecFile.path}'");
    exit(1);
  }

  final applicationName = pubspec.name;

  _print("Building $applicationName v$versionAsString for $platform");

  final flutterPath = Platform.environment["FLUTTER_ROOT"];

  if (flutterPath == null || flutterPath.isEmpty) {
    _print("FLUTTER_ROOT environment variable is not set");
    exit(1);
  }

  _print("Current working directory '${Directory.current.path}'");

  var flutterExecutable = "flutter";
  if (Platform.isWindows) {
    flutterExecutable += ".bat";
  }

  final flutterBinPath = path.join(flutterPath, "bin", flutterExecutable);

  if (!File(flutterBinPath).existsSync()) {
    _print("Flutter executable not found at path: $flutterBinPath");
    exit(1);
  }

  final buildCommand = <String>[flutterBinPath, "build", platform];

  if (extraArgs.isNotEmpty) {
    buildCommand.addAll(extraArgs);
  }

  _print("Executing build command: ${buildCommand.join(' ')}");

  final process = await Process.start(
    buildCommand.first,
    buildCommand.sublist(1),
  );

  process.stdout.transform(utf8.decoder).listen(_print);
  process.stderr.transform(utf8.decoder).listen((data) {
    stderr.writeln(data);
  });

  final exitCode = await process.exitCode;
  if (exitCode != 0) {
    stderr.writeln("Build failed with exit code $exitCode");
    exit(1);
  }

  _print("Build completed successfully");
}

void _print(String message) {
  print(message);
}
