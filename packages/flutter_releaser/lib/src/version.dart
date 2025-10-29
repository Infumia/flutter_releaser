import "dart:io";

import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser/src/models.dart" hide Platform;
import "package:package_info_plus/package_info_plus.dart";
import "package:pub_semver/pub_semver.dart" as sem;

final _cache = <String, sem.Version>{};

sem.Version parseVersion(String version) =>
    _cache.putIfAbsent(version, () => sem.Version.parse(version));

Future<Version?> retrieveNewVersion(FlutterReleaserSettings settings) async {
  final json = await settings.requester.get<Map<String, dynamic>>(
    settings,
    apiPath: "/archive",
  );
  final archive = ApplicationArchive.fromJson(json);

  return _extractNewVersion(settings, archive);
}

Future<Version?> _extractNewVersion(
  FlutterReleaserSettings settings,
  ApplicationArchive archive,
) async {
  final latestVersion = _extractLatestVersion(settings, archive);
  final info = await PackageInfo.fromPlatform();
  final currentVersion = parseVersion(info.version);

  if (currentVersion >= latestVersion.parsedVersion()) {
    settings.logDebug("Could not found newer version than '$currentVersion'");
    return null;
  }

  settings.logDebug("New version found '${latestVersion.version}'");
  return latestVersion;
}

Version _extractLatestVersion(
  FlutterReleaserSettings settings,
  ApplicationArchive archive,
) {
  final versions =
      archive.versions
          .where((element) => element.platform.name == Platform.operatingSystem)
          .toList()
        ..sort();
  final latestVersion = versions.firstOrNull;

  if (latestVersion == null) {
    throw Exception(
      "Could not found version for this platform '${Platform.operatingSystem}'",
    );
  }

  settings.logDebug(
    "Latest version for '${archive.name}' found '${latestVersion.version}'",
  );
  return latestVersion;
}
