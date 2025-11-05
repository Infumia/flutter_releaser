import "dart:async";
import "dart:convert";
import "dart:io";

import "package:args/command_runner.dart";
import "package:path/path.dart" as path;
import "package:flutter_releaser/flutter_releaser.dart";
import "package:pubspec_parse/pubspec_parse.dart";
import "package:talker/talker.dart";

class BuildCommand extends Command<void> {
  @override
  final name = "build";

  @override
  final description = "Builds the project.";

  BuildCommand(Talker talker) {
    addSubcommand(_PlatformCommand(talker, TargetPlatform.windows));
    addSubcommand(_PlatformCommand(talker, TargetPlatform.linux));
    addSubcommand(_PlatformCommand(talker, TargetPlatform.macos));
  }
}

class _PlatformCommand extends Command<void> {
  @override
  String get name => _name;

  @override
  String get description => _description;

  _PlatformCommand(Talker talker, TargetPlatform platform)
    : this._(
        talker,
        platform.name,
        "Builds the project to ${platform.name} platform.",
        platform,
      );

  @override
  FutureOr<void> run() async {
    final extraArgs = argResults?.rest ?? const [];

    final pubspecFile = File("pubspec.yaml");
    final pubspecAsString = await pubspecFile.readAsString();
    final pubspec = Pubspec.parse(pubspecAsString);
    final versionAsString = pubspec.version?.toString();
    final applicationName = pubspec.name;

    _talker.info(
      "Building $applicationName ${versionAsString == null ? "" : "v$versionAsString"} for ${_platform.name}",
    );

    final flutterPath = Platform.environment["FLUTTER_ROOT"];

    if (flutterPath == null || flutterPath.isEmpty) {
      _talker.error("FLUTTER_ROOT environment variable is not set");
      return;
    }

    _talker.info("Current working directory '${Directory.current.path}'");

    var flutterExecutable = "flutter";
    if (Platform.isWindows) {
      flutterExecutable += ".bat";
    }

    final flutterBinPath = path.join(flutterPath, "bin", flutterExecutable);

    if (!File(flutterBinPath).existsSync()) {
      _talker.error("Flutter executable not found at path: $flutterBinPath");
      return;
    }

    final buildCommand = <String>[flutterBinPath, "build", _platform.name];

    if (extraArgs.isNotEmpty) {
      buildCommand.addAll(extraArgs);
    }

    _talker.info("Executing build command: ${buildCommand.join(' ')}");

    final process = await Process.start(
      buildCommand.first,
      buildCommand.sublist(1),
    );

    process.stdout.transform(utf8.decoder).listen(stdout.write);
    process.stderr.transform(utf8.decoder).listen(stderr.write);

    final exitCode = await process.exitCode;
    if (exitCode != 0) {
      _talker.error("Build failed with exit code $exitCode");
      return;
    }

    _talker.info("Build completed successfully");
  }

  final Talker _talker;
  final String _name;
  final String _description;
  final TargetPlatform _platform;
  _PlatformCommand._(
    this._talker,
    this._name,
    this._description,
    this._platform,
  );
}
