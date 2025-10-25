import "dart:io";

import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser/src/models.dart" hide Platform;
import "package:package_info_plus/package_info_plus.dart";
import "package:pub_semver/pub_semver.dart" as sem;

final _cache = <String, sem.Version>{};

sem.Version parseVersion(String version) =>
    _cache.putIfAbsent(version, () => sem.Version.parse(version));

Future<Version?> retrieveNewVersion(
  FlutterReleaserSettings settings,
  ApplicationArchive archive,
) async {
  final logger = settings.logger;
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

  logger.debug(
    "Latest version for '${archive.name}' found '${latestVersion.version}'",
  );

  final info = await PackageInfo.fromPlatform();
  final currentVersion = parseVersion(info.version);

  if (currentVersion >= latestVersion.parsedVersion()) {
    logger.debug("Could not found newer version than '$currentVersion'");
    return null;
  }

  logger.debug("New version found '${latestVersion.version}'");
  return latestVersion;
}
