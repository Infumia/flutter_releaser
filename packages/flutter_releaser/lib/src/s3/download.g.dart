// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DownloadS3FileResponse _$DownloadS3FileResponseFromJson(
  Map<String, dynamic> json,
) => _DownloadS3FileResponse(
  url: json['url'] as String,
  headers: Map<String, String>.from(json['headers'] as Map),
);

Map<String, dynamic> _$DownloadS3FileResponseToJson(
  _DownloadS3FileResponse instance,
) => <String, dynamic>{'url': instance.url, 'headers': instance.headers};
