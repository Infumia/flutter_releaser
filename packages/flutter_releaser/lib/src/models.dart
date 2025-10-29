import "package:flutter_releaser/src/version.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:pub_semver/pub_semver.dart" as sem;

part "models.freezed.dart";
part "models.g.dart";

enum FileStorage { s3 }

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
    required int id,
    required NetworkFile file,
    required String version,
    required Platform platform,
    required int sizeInBytes,
    required bool mandatory,
    DateTime? timestamp,
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
sealed class NetworkFile with _$NetworkFile {
  const factory NetworkFile({
    required int id,
    required String name,
    required int size,
    required String sha256,
    required DateTime requestDate,
    DateTime? uploadDate,
  }) = _NetworkFile;

  factory NetworkFile.fromJson(Map<String, dynamic> json) =>
      _$NetworkFileFromJson(json);
}
