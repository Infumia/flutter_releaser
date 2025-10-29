import "package:freezed_annotation/freezed_annotation.dart";

part "progress.freezed.dart";

@freezed
sealed class DownloadProgress with _$DownloadProgress {
  const factory DownloadProgress({
    required int totalBytes,
    required int receivedBytes,
    required bool finished,
  }) = _DownloadProgress;
}

@freezed
sealed class UploadProgress with _$UploadProgress {
  const factory UploadProgress({
    required int totalBytes,
    required int sentBytes,
    required bool finished,
  }) = _UploadProgress;
}
