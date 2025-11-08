import "package:flutter/material.dart";
import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser_flutter/flutter_releaser_flutter.dart";

Future<void> main() async {
  runApp(_Root());
}

class _Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) => const MaterialApp(
    title: "Flutter Releaser",
    debugShowCheckedModeBanner: false,
    home: Scaffold(body: _MainPage()),
  );
}

class _MainPage extends StatelessWidget {
  final _controller = FlutterUpdateController(
    settings: FlutterReleaserSettings(
      apiUri: Uri.parse("http://localhost:8080/"),
      requester: HttpRequester,
      apiRequestHeadersProvider: apiRequestHeadersProvider,
    ),
  );

  const _MainPage();

  @override
  Widget build(BuildContext context) => const Placeholder();
}
