import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:package_info_plus/package_info_plus.dart";

Future<void> main() async {
  final info = await PackageInfo.fromPlatform();
  runApp(MyApp(info: info));
}

class MyApp extends StatelessWidget {
  final PackageInfo info;

  const MyApp({required this.info, super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: "Flutter Releaser",
    debugShowCheckedModeBanner: false,
    home: Scaffold(body: Text("$info")),
  );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<PackageInfo>("info", info));
  }
}
