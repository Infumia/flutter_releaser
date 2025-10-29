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
  id: (json['id'] as num).toInt(),
  file: NetworkFile.fromJson(json['file'] as Map<String, dynamic>),
  version: json['version'] as String,
  platform: $enumDecode(_$PlatformEnumMap, json['platform']),
  sizeInBytes: (json['sizeInBytes'] as num).toInt(),
  mandatory: json['mandatory'] as bool,
  timestamp: json['timestamp'] == null
      ? null
      : DateTime.parse(json['timestamp'] as String),
  changes: (json['changes'] as List<dynamic>?)
      ?.map((e) => Change.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$VersionToJson(_Version instance) => <String, dynamic>{
  'id': instance.id,
  'file': instance.file,
  'version': instance.version,
  'platform': _$PlatformEnumMap[instance.platform]!,
  'sizeInBytes': instance.sizeInBytes,
  'mandatory': instance.mandatory,
  'timestamp': instance.timestamp?.toIso8601String(),
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

_NetworkFile _$NetworkFileFromJson(Map<String, dynamic> json) => _NetworkFile(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  size: (json['size'] as num).toInt(),
  sha256: json['sha256'] as String,
  requestDate: DateTime.parse(json['requestDate'] as String),
  uploadDate: json['uploadDate'] == null
      ? null
      : DateTime.parse(json['uploadDate'] as String),
);

Map<String, dynamic> _$NetworkFileToJson(_NetworkFile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'size': instance.size,
      'sha256': instance.sha256,
      'requestDate': instance.requestDate.toIso8601String(),
      'uploadDate': instance.uploadDate?.toIso8601String(),
    };
