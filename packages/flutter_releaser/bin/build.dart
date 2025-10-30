import "dart:convert";
import "dart:io";

import "package:flutter/foundation.dart" hide TargetPlatform;
import "package:flutter_releaser/src/models.dart" hide Version;
import "package:pubspec_parse/pubspec_parse.dart";
import "package:path/path.dart" as path;

Future<void> main(List<String> args) async {
  final availablePlatforms = TargetPlatform.values
      .map((e) => e.name)
      .toList(growable: false);
  if (args.isEmpty) {
    debugPrint("Platform must be specified ($availablePlatforms)");
    exit(1);
  }

  final platformName = args[0];
  final extraArgs = args.length > 2 ? args.sublist(2) : const <String>[];

  final platform = TargetPlatform.values
      .where((element) => element.name == platformName)
      .firstOrNull;

  if (platform == null) {
    debugPrint("Invalid platform '$platformName', ($availablePlatforms)");
    exit(1);
  }

  final pubspecFile = File("pubspec.yaml");
  final pubspecAsString = await pubspecFile.readAsString();
  final pubspec = Pubspec.parse(pubspecAsString);

  final versionAsString = pubspec.version?.toString();
  if (versionAsString == null) {
    debugPrint("Version could not found for '${pubspecFile.path}'");
    exit(1);
  }

  final applicationName = pubspec.name;

  debugPrint("Building $applicationName v$versionAsString for $platform");

  final flutterPath = Platform.environment["FLUTTER_ROOT"];

  if (flutterPath == null || flutterPath.isEmpty) {
    debugPrint("FLUTTER_ROOT environment variable is not set");
    exit(1);
  }

  debugPrint("Current working directory '${Directory.current.path}'");

  var flutterExecutable = "flutter";
  if (Platform.isWindows) {
    flutterExecutable += ".bat";
  }

  final flutterBinPath = path.join(flutterPath, "bin", flutterExecutable);

  if (!File(flutterBinPath).existsSync()) {
    debugPrint("Flutter executable not found at path: $flutterBinPath");
    exit(1);
  }

  final buildCommand = <String>[flutterBinPath, "build", platform.name];

  if (extraArgs.isNotEmpty) {
    buildCommand.addAll(extraArgs);
  }

  debugPrint("Executing build command: ${buildCommand.join(' ')}");

  final process = await Process.start(
    buildCommand.first,
    buildCommand.sublist(1),
  );

  process.stdout.transform(utf8.decoder).listen(debugPrint);
  process.stderr.transform(utf8.decoder).listen((data) {
    stderr.writeln(data);
  });

  final exitCode = await process.exitCode;
  if (exitCode != 0) {
    stderr.writeln("Build failed with exit code $exitCode");
    exit(1);
  }

  debugPrint("Build completed successfully");

  final buildPath = switch (platform) {
    TargetPlatform.macos => path.join(
      "build",
      "macos",
      "Build",
      "Products",
      "Release",
      "$applicationName.app",
    ),
    TargetPlatform.linux => path.join(
      "build",
      "linux",
      "x64",
      "release",
      "bundle",
    ),
    TargetPlatform.windows => path.join(
      "build",
      "windows",
      "x64",
      "runner",
      "Release",
    ),
  };
}
