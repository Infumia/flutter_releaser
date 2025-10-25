import "package:freezed_annotation/freezed_annotation.dart";

part "progress.freezed.dart";

@freezed
sealed class DownloadProgress with _$DownloadProgress {
  const factory DownloadProgress({
    required double totalBytes,
    required double receivedBytes,
  }) = _DownloadProgress;
}
