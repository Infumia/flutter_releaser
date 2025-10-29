import "dart:io";

import "package:crypto/crypto.dart";

extension FileExtensions on File {
  Future<Digest> retrieveSha256() async => sha256.convert(await readAsBytes());
}
