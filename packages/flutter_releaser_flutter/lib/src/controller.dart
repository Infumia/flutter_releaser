import "dart:io";

import "package:flutter/foundation.dart" hide TargetPlatform;
import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser_flutter/src/ref.dart";

class FlutterUpdateController extends ChangeNotifier {
  final FlutterReleaserSettings settings;
  final ValueNotifierRef<Version?> nextVersionRef = ValueNotifierRef(
    ValueNotifier(null),
  );
  final ValueNotifierRef<DownloadProgress?> downloadProgressRef =
      ValueNotifierRef(ValueNotifier(null));
  final ValueNotifierRef<UploadProgress?> uploadProgressRef = ValueNotifierRef(
    ValueNotifier(null),
  );
  late final UpdateController _delegate;

  FlutterUpdateController({required this.settings}) {
    _delegate = UpdateController(settings: settings);
    nextVersionRef.notifier.addListener(notifyListeners);
    downloadProgressRef.notifier.addListener(notifyListeners);
    uploadProgressRef.notifier.addListener(notifyListeners);
  }

  Future<Version?> check() => _delegate.check();

  Future<File> download(Version version) =>
      _delegate.download(version, downloadProgressRef);

  Future<void> extract(File file) => _delegate.extract(file);

  Future<void> upload(
    String version,
    String archivePath,
    TargetPlatform platform,
    Ref<UploadProgress?> uploadProgressRef, {
    bool mandatory = true,
    List<Change>? changes,
  }) => _delegate.upload(version, archivePath, platform, uploadProgressRef);
}
