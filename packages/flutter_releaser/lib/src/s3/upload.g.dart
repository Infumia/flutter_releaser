// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UploadVersionRequest _$UploadVersionRequestFromJson(
  Map<String, dynamic> json,
) => _UploadVersionRequest(
  version: json['version'] as String,
  archivePath: json['archivePath'] as String,
  platform: $enumDecode(_$TargetPlatformEnumMap, json['platform']),
  mandatory: json['mandatory'] as bool,
  changes: (json['changes'] as List<dynamic>)
      .map((e) => Change.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$UploadVersionRequestToJson(
  _UploadVersionRequest instance,
) => <String, dynamic>{
  'version': instance.version,
  'archivePath': instance.archivePath,
  'platform': _$TargetPlatformEnumMap[instance.platform]!,
  'mandatory': instance.mandatory,
  'changes': instance.changes,
};

const _$TargetPlatformEnumMap = {
  TargetPlatform.macos: 'macos',
  TargetPlatform.linux: 'linux',
  TargetPlatform.windows: 'windows',
};

_UploadS3FileRequest _$UploadS3FileRequestFromJson(Map<String, dynamic> json) =>
    _UploadS3FileRequest(
      name: json['name'] as String,
      sizeInBytes: (json['sizeInBytes'] as num).toInt(),
      sha256: json['sha256'] as String,
      version: json['version'] as String,
      platform: $enumDecode(_$TargetPlatformEnumMap, json['platform']),
      mandatory: json['mandatory'] as bool,
      changes: (json['changes'] as List<dynamic>)
          .map((e) => Change.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UploadS3FileRequestToJson(
  _UploadS3FileRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'sizeInBytes': instance.sizeInBytes,
  'sha256': instance.sha256,
  'version': instance.version,
  'platform': _$TargetPlatformEnumMap[instance.platform]!,
  'mandatory': instance.mandatory,
  'changes': instance.changes,
};

_UploadS3FileResponse _$UploadS3FileResponseFromJson(
  Map<String, dynamic> json,
) => _UploadS3FileResponse(
  id: (json['id'] as num).toInt(),
  url: json['url'] as String,
  headers: Map<String, String>.from(json['headers'] as Map),
);

Map<String, dynamic> _$UploadS3FileResponseToJson(
  _UploadS3FileResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'url': instance.url,
  'headers': instance.headers,
};
