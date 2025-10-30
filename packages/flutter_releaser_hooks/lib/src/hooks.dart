import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:flutter_releaser_flutter/flutter_releaser_flutter.dart";
import "package:flutter_releaser/flutter_releaser.dart";

/// Creates an [UpdateController] that is automatically disposed.
FlutterUpdateController useUpdateController({
  required FlutterReleaserSettings settings,
  List<Object?>? keys,
}) => use(_UpdateControllerHook(settings: settings, keys: keys));

class _UpdateControllerHook extends Hook<FlutterUpdateController> {
  final FlutterReleaserSettings settings;

  const _UpdateControllerHook({required this.settings, super.keys});

  @override
  _UpdateControllerHookState createState() => _UpdateControllerHookState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
      DiagnosticsProperty<FlutterReleaserSettings>("settings", settings),
    );
  }
}

class _UpdateControllerHookState
    extends HookState<FlutterUpdateController, _UpdateControllerHook> {
  late final FlutterUpdateController _controller = FlutterUpdateController(
    settings: hook.settings,
  );

  @override
  FlutterUpdateController build(BuildContext context) => _controller;

  @override
  void dispose() => _controller.dispose();

  @override
  bool get debugHasShortDescription => false;

  @override
  String get debugLabel => "useUpdateController";
}
