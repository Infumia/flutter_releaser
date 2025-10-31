import "dart:io";

import "package:flutter_releaser/flutter_releaser.dart";
import "package:pub_semver/pub_semver.dart" as sem;

final _cache = <String, sem.Version>{};

sem.Version parseVersion(String version) =>
    _cache.putIfAbsent(version, () => sem.Version.parse(version));

Future<Version?> retrieveNewVersion(FlutterReleaserSettings settings,
    String currentVersion) async {
  final json = await settings.requester.get<Map<String, dynamic>>(
    settings,
    apiPath: "/archive",
  );
  final archive = ApplicationArchive.fromJson(json);

  return _extractNewVersion(settings, archive, currentVersion);
}

Future<Version?> _extractNewVersion(
  FlutterReleaserSettings settings,
  ApplicationArchive archive,
  String currentVersion,
) async {
  final latestVersion = _extractLatestVersion(settings, archive);
  final parsedVersion = parseVersion(currentVersion);

  if (parsedVersion >= latestVersion.parsedVersion()) {
    settings.logDebug("Could not found newer version than '$parsedVersion'");
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
