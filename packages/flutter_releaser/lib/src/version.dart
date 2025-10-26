import "dart:convert";
import "dart:io";

import "package:flutter_releaser/flutter_releaser.dart";
import "package:flutter_releaser/src/files.dart";
import "package:flutter_releaser/src/http.dart";
import "package:flutter_releaser/src/models.dart" hide Platform;
import "package:package_info_plus/package_info_plus.dart";
import "package:pub_semver/pub_semver.dart" as sem;

final _cache = <String, sem.Version>{};

sem.Version parseVersion(String version) =>
    _cache.putIfAbsent(version, () => sem.Version.parse(version));

Future<Version?> retrieveNewVersion(FlutterReleaserSettings settings) async {
  final directory = retrieveExecutableDirectory(settings);
  if (directory == null) {
    return null;
  }
  final (client, response) = await sendHttpGetRequest(
    settings,
    url: settings.applicationArchiveUrl,
  );
  if (response.statusCode != 200) {
    client.close();
    throw HttpException(
      "Failed to download file '${settings.applicationArchiveUrl}'\n"
      "Status code '${response.statusCode}",
    );
  }
  final File output;
  try {
    output = await writeApplicationArchive(settings, response);
  } finally {
    client.close();
  }
  final text = await output.readAsString();
  final ApplicationArchive archive;
  try {
    archive = ApplicationArchive.fromJson(
      jsonDecode(text) as Map<String, dynamic>,
    );
  } on Exception catch (e, s) {
    settings.logError(
      "An error occurred while parsing json to create 'ApplicationArchive'",
      e,
      s,
    );
    rethrow;
  }
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
