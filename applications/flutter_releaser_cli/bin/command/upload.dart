import "dart:async";

import "package:args/command_runner.dart";
import "package:talker/talker.dart";

class UploadCommand extends Command<void> {
  @override
  final name = "upload";

  @override
  final description = "Uploads the project to the server.";

  UploadCommand(Talker talker) : this._(talker);

  @override
  FutureOr<void> run() async {}

  final Talker _talker;

  UploadCommand._(this._talker);
}
