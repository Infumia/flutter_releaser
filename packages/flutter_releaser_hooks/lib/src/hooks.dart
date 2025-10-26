import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:flutter_releaser/flutter_releaser.dart";

/// Creates an [UpdateController] that is automatically disposed.
UpdateController useUpdateController({
  required FlutterReleaserSettings settings,
  List<Object?>? keys,
}) => use(_UpdateControllerHook(settings: settings, keys: keys));

class _UpdateControllerHook extends Hook<UpdateController> {
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
    extends HookState<UpdateController, _UpdateControllerHook> {
  late final UpdateController _controller = UpdateController(
    settings: hook.settings,
  );

  @override
  UpdateController build(BuildContext context) => _controller;

  @override
  void dispose() => _controller.dispose();

  @override
  bool get debugHasShortDescription => false;

  @override
  String get debugLabel => "useUpdateController";
}
