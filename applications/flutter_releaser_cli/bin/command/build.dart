import "dart:async";
import "dart:io";

import "package:args/command_runner.dart";
import "package:flutter_releaser/flutter_releaser.dart";
import "package:pubspec_parse/pubspec_parse.dart";
import "package:talker/talker.dart";
import "util.dart";

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

    try {
      final exitCode = await runFlutterCommand(
          commandAndArguments: ["build", _platform.name, ...extraArgs],
          talker: _talker
      );

      if (exitCode != 0) {
        _talker.error("Build failed with exit code $exitCode");
        return;
      }

      _talker.info("Build completed successfully");
    } on Exception catch (e, s) {
      _talker.handle(e, s, "An error occurred while running flutter build command");
    }
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
