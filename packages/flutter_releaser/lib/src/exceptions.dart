class CouldNotDownloadFile implements Exception {
  final String message;

  CouldNotDownloadFile(this.message);
}

class CouldNotFoundNextVersion implements Exception {
  final String message;

  CouldNotFoundNextVersion(this.message);
}
