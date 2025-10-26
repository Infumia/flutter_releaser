import "package:flutter_releaser/src/version.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:pub_semver/pub_semver.dart" as sem;

part "models.freezed.dart";
part "models.g.dart";

@freezed
sealed class ApplicationArchive with _$ApplicationArchive {
  const factory ApplicationArchive({
    required String name,
    required String description,
    required List<Version> versions,
  }) = _ApplicationArchive;

  factory ApplicationArchive.fromJson(Map<String, dynamic> json) =>
      _$ApplicationArchiveFromJson(json);
}

enum Platform { macos, linux, windows }

@freezed
sealed class Version with _$Version implements Comparable<Version> {
  const Version._();

  const factory Version({
    required String version,
    required Uri url,
    required Platform platform,
    required int sizeInBytes,
    DateTime? date,
    bool? mandatory,
    List<Change>? changes,
  }) = _Version;

  factory Version.fromJson(Map<String, dynamic> json) =>
      _$VersionFromJson(json);

  @override
  int compareTo(Version other) => parsedVersion().compareTo(parsedVersion());

  sem.Version parsedVersion() => parseVersion(version);
}

enum ChangeType {
  feat({"feature", "features", "feats"}),
  fix({"fixes", "fix"}),
  chore({"chores"}),
  doc({"docs", "document", "documents", "documentation", "documentations"});

  final Set<String> aliases;

  const ChangeType(this.aliases);
}

@freezed
sealed class Change with _$Change {
  const factory Change({required ChangeType? type, required String message}) =
      _Change;

  factory Change.fromJson(Map<String, dynamic> json) => _$ChangeFromJson(json);
}

@freezed
sealed class FileHash with _$FileHash {
  const factory FileHash({
    required String path,
    required String hash,
    required int length,
  }) = _FileHash;

  factory FileHash.fromJson(Map<String, dynamic> json) =>
      _$FileHashFromJson(json);
}
