// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DownloadS3FileResponse _$DownloadS3FileResponseFromJson(
  Map<String, dynamic> json,
) => _DownloadS3FileResponse(
  file: NetworkFile.fromJson(json['file'] as Map<String, dynamic>),
  url: json['url'] as String,
  headers: Map<String, String>.from(json['headers'] as Map),
);

Map<String, dynamic> _$DownloadS3FileResponseToJson(
  _DownloadS3FileResponse instance,
) => <String, dynamic>{
  'file': instance.file,
  'url': instance.url,
  'headers': instance.headers,
};
