class CouldNotDownloadFileException implements Exception {
  final String message;

  CouldNotDownloadFileException(this.message);
}

class FileNotFoundException implements Exception {
  final String message;

  FileNotFoundException(this.message);
}
