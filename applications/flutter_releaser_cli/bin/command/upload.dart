import "dart:async";
import "dart:io";

import "package:args/command_runner.dart";
import "package:dio/dio.dart";
import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser_dio/flutter_releaser_dio.dart";
import "package:path/path.dart" as path;
import "package:pubspec_parse/pubspec_parse.dart";
import "package:talker/talker.dart";
import "package:flutter_releaser/src/files.dart";

class UploadCommand extends Command<void> {
  @override
  final name = "upload";

  @override
  final description = "Uploads the project to the server.";

  UploadCommand(Talker talker) {
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
        "Uploads the project to the given api server for the specified platform.",
        platform,
      );

  @override
  FutureOr<void> run() async {
    final args = argResults;
    if (args == null) {
      return;
    }

    final api = args.option("api")!;
    final authorizationHeader = args.option("api-authorization-header")!;

    final mandatory = args.flag("mandatory");
    final changesFix = args.multiOption("add-changes-fix");
    final changesChore = args.multiOption("add-changes-chore");
    final changesDoc = args.multiOption("add-changes-doc");
    final changesFeat = args.multiOption("add-changes-feat");

    final pubspecFile = File("pubspec.yaml");
    final pubspecAsString = await pubspecFile.readAsString();
    final pubspec = Pubspec.parse(pubspecAsString);

    final versionAsString = pubspec.version?.toString();
    if (versionAsString == null) {
      _talker.error("Version could not found for '${pubspecFile.path}'");
      return;
    }

    final applicationName = pubspec.name;
    final buildPath = switch (_platform) {
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
    final buildDirectory = Directory(buildPath);
    if (!buildDirectory.existsSync()) {
      _talker.error(
        "Directory '$buildPath' not found, build the project first",
      );
      return;
    }
    final controller = UpdateController(
      settings: FlutterReleaserSettings(
        apiUri: Uri.parse(api),
        requester: HttpRequesterDio(Dio()),
        apiRequestHeadersProvider: () => {"Authorization": authorizationHeader},
      ),
    );

    final outputDirectory = await createTemporaryDirectory(controller.settings);
    final outputFilePath = path.join(
      outputDirectory.path,
      "$applicationName-v$versionAsString.zip",
    );

    _talker.info("Directory '$buildPath' archiving into '$outputFilePath'");

    final archiveFile = await controller.archive(
      buildDirectory,
      outputFilePath,
    );

    _talker.info(
      "Archived file '${archiveFile.path} uploading to ${controller.settings.apiUri}'",
    );

    await controller.upload(
      versionAsString,
      archiveFile.path,
      _platform,
      ValueRef(null),
      mandatory: mandatory,
      changes: [
        ...changesFix.map((e) => Change(message: e, type: ChangeType.fix)),
        ...changesChore.map((e) => Change(message: e, type: ChangeType.chore)),
        ...changesDoc.map((e) => Change(message: e, type: ChangeType.doc)),
        ...changesFeat.map((e) => Change(message: e, type: ChangeType.feat)),
      ],
    );

    _talker.info("Archive upload is done");

    await outputDirectory.delete();
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
  ) {
    argParser
      ..addOption(
        "api",
        mandatory: true,
        help: "Url for the flutter_releaser server.",
        valueHelp: "http://localhost:8080",
      )
      ..addOption(
        "api-authorization-header",
        mandatory: true,
        help:
            "Header value for 'Authorization' header while sending request to your api",
        valueHelp: "Basic cm9vdDpsb2NhbA==",
      )
      ..addFlag(
        "mandatory",
        help: "Whether the update is mandatory or not",
        defaultsTo: true,
      )
      ..addMultiOption(
        "add-changes-fix",
        help: "Add the change into the fix list",
        valueHelp: "We fix this.",
      )
      ..addMultiOption(
        "add-changes-chore",
        help: "Add the change into the chore list",
        valueHelp: "We did these.",
      )
      ..addMultiOption(
        "add-changes-doc",
        help: "Add the change into the documentation list",
        valueHelp: "We improved documentation.",
      )
      ..addMultiOption(
        "add-changes-feat",
        help: "Add the change into the feature list",
        valueHelp: "We added this feature.",
      );
  }
}
