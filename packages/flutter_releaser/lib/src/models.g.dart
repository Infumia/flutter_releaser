// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApplicationArchive _$ApplicationArchiveFromJson(Map<String, dynamic> json) =>
    _ApplicationArchive(
      name: json['name'] as String,
      description: json['description'] as String,
      versions: (json['versions'] as List<dynamic>)
          .map((e) => Version.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApplicationArchiveToJson(_ApplicationArchive instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'versions': instance.versions,
    };

_Version _$VersionFromJson(Map<String, dynamic> json) => _Version(
  version: json['version'] as String,
  url: Uri.parse(json['url'] as String),
  platform: $enumDecode(_$PlatformEnumMap, json['platform']),
  sizeInBytes: (json['sizeInBytes'] as num).toInt(),
  date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
  mandatory: json['mandatory'] as bool?,
  changes: (json['changes'] as List<dynamic>?)
      ?.map((e) => Change.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$VersionToJson(_Version instance) => <String, dynamic>{
  'version': instance.version,
  'url': instance.url.toString(),
  'platform': _$PlatformEnumMap[instance.platform]!,
  'sizeInBytes': instance.sizeInBytes,
  'date': instance.date?.toIso8601String(),
  'mandatory': instance.mandatory,
  'changes': instance.changes,
};

const _$PlatformEnumMap = {
  Platform.macos: 'macos',
  Platform.linux: 'linux',
  Platform.windows: 'windows',
};

_Change _$ChangeFromJson(Map<String, dynamic> json) => _Change(
  type: $enumDecodeNullable(_$ChangeTypeEnumMap, json['type']),
  message: json['message'] as String,
);

Map<String, dynamic> _$ChangeToJson(_Change instance) => <String, dynamic>{
  'type': _$ChangeTypeEnumMap[instance.type],
  'message': instance.message,
};

const _$ChangeTypeEnumMap = {
  ChangeType.feat: 'feat',
  ChangeType.fix: 'fix',
  ChangeType.chore: 'chore',
  ChangeType.doc: 'doc',
};

_FileHash _$FileHashFromJson(Map<String, dynamic> json) => _FileHash(
  path: json['path'] as String,
  hash: json['hash'] as String,
  length: (json['length'] as num).toInt(),
);

Map<String, dynamic> _$FileHashToJson(_FileHash instance) => <String, dynamic>{
  'path': instance.path,
  'hash': instance.hash,
  'length': instance.length,
};
