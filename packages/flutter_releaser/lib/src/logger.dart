import "package:flutter/foundation.dart";

abstract interface class Logger {
  void debug(String message);

  void error(String message, [Exception? exception, StackTrace? trace]);
}

class LoggerPrint implements Logger {
  const LoggerPrint();

  @override
  void info(String message) {
    debugPrint(message);
  }

  @override
  void debug(String message) {
    debugPrint(message);
  }

  @override
  void error(String message, [Exception? exception, StackTrace? trace]) {
    debugPrint(message);
    if (exception != null) {
      debugPrint("Exception: $exception");
    }
    if (trace != null) {
      debugPrint(
        FlutterError.defaultStackFilter(
          trace.toString().trimRight().split("\n"),
        ).join("\n"),
      );
    }
  }
}
