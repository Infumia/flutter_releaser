import "package:freezed_annotation/freezed_annotation.dart";

part "models.freezed.dart";
part "models.g.dart";

@freezed
sealed class ApplicationArchive with _$ApplicationArchive {
  const factory ApplicationArchive({
    required String name,
    required String description,
    required List<Item> items,
  }) = _ApplicationArchive;

  factory ApplicationArchive.fromJson(Map<String, dynamic> json) =>
      _$ApplicationArchiveFromJson(json);
}

enum Platform { macos, linux, windows }

@freezed
sealed class Item with _$Item implements Comparable<Item> {
  const factory Item({
    required String version,
    required int shortVersion,
    required DateTime date,
    required bool mandatory,
    required Uri url,
    required Platform platform,
    required List<Change>? changes,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  @override
  int compareTo(Item other) =>
      shortVersion.compareTo(other.shortVersion);
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
