abstract interface class Logger {
  void debug(String message);

  void error(String message, [Exception? exception, StackTrace? trace]);
}

class LoggerNoop implements Logger {
  const LoggerNoop();

  @override
  void debug(String message) {}

  @override
  void error(String message, [Exception? exception, StackTrace? trace]) {}
}
