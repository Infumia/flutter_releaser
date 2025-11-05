import "dart:io";

import "package:args/command_runner.dart";
import "package:talker/talker.dart";

import "command/build.dart";
import "command/upload.dart";

Future<void> main(List<String> args) async {
  final talker = Talker();

  final runner =
      CommandRunner<void>(
          "flutter_releaser",
          "A Dart implementation of flutter releaser to build/archive/upload flutter applications.",
        )
        ..addCommand(BuildCommand(talker))
        ..addCommand(UploadCommand(talker));

  try {
    await runner.run(args);
  } on UsageException catch (e) {
    print(e);
    exit(64);
  } on Exception catch (e, s) {
    talker.handle(
      e,
      s,
      "An error occurred while running flutter_releaser command",
    );
    exit(1);
  }
}
