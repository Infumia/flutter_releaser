import "package:dio/dio.dart";
import "package:flutter/material.dart";
import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser_dio/flutter_releaser_dio.dart";
import "package:flutter_releaser_flutter/flutter_releaser_flutter.dart";
import "package:package_info_plus/package_info_plus.dart";
import "package:talker/talker.dart";

final _controller = FlutterUpdateController(
  settings: FlutterReleaserSettings(
    apiUri: Uri.parse("http://localhost:8080/"),
    requester: HttpRequesterDio(Dio()),
    apiRequestHeadersProvider: () => {
      // root->local
      "Authorization": "Basic cm9vdDpsb2NhbA==",
    },
    logger: _TalkerLogger(),
  ),
);

const _plugin = FlutterReleaserPlugin();

Future<void> main() async {
  final info = await PackageInfo.fromPlatform();
  runApp(_Root(info));
}

class _Root extends StatelessWidget {
  final PackageInfo _info;

  const _Root(this._info);

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: "Flutter Releaser",
    debugShowCheckedModeBanner: false,
    home: Scaffold(body: _MainPage(_info)),
  );
}

class _MainPage extends StatelessWidget {
  final PackageInfo _info;

  const _MainPage(this._info);

  @override
  Widget build(BuildContext context) {
    _controller.check().then((newVersion) async {
      if (newVersion == null) {
        return;
      }

      return _controller.download(newVersion).then((file) async {
        await _controller.prepareForUpdate(file);
        await _plugin.restartApplication();
      });
    });

    return Text("Application version: v${_info.version}");
  }
}

class _TalkerLogger implements Logger {
  final _talker = Talker();

  @override
  void debug(String message) {
    _talker.debug(message);
  }

  @override
  void error(String message, [Exception? exception, StackTrace? trace]) {
    _talker.error(message, exception, trace);
  }
}
