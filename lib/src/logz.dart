part of dart_logz;

/// {@template dart_logz}
/// A logging utility that provides color-coded
/// log messages for different log levels such as
/// info, success, warning, error, debug, and fatal.
/// {@endtemplate}
class Logz {
  /// {@macro dart_logz}
  factory Logz() {
    return _instance;
  }

  /// Private constructor.
  Logz._internal();

  /// Singleton instance.
  static final Logz _instance = Logz._internal();

  /// Info - Prints with no special formatting.
  void i(String message) {
    _print(message);
  }

  /// Success - Prints in [_Color.green] to indicate successful operations.
  void s(String message) {
    _print(message, _Color.green);
  }

  /// Warning - Prints in [_Color.yellow] to indicate potential issues.
  void w(String message) {
    _print('Warning: $message', _Color.yellow);
  }

  /// Error - Prints in [_Color.red] to indicate errors.
  void e(String message) {
    _print('Error: $message', _Color.red);
  }

  /// Debug - Prints in [_Color.cyan] to indicate debug information.
  /// Only shown in debug mode.
  void d(String message) {
    if (LogzConfig.debugMode) {
      _print('Debug: $message', _Color.cyan);
    }
  }

  /// Fatal - Prints in [_Color.magenta] to indicate fatal errors.
  /// StackTrace is optional and only shown in debug mode.
  void f(String message, Object error, [StackTrace? stackTrace]) {
    _print('Fatal: $message', _Color.magenta);
    _print('  Details: $error', _Color.magenta);
    if (LogzConfig.debugMode && stackTrace != null) {
      _print('  Stack trace: $stackTrace', _Color.magenta);
    }
  }

  /// Utility to colorize messages.
  void _print(String message, [_Color? color]) {
    if (color != null) {
      stdout.writeln('${color.code}$message${_Color.reset.code}');
    } else {
      stdout.writeln(message);
    }
  }
}

/// Global access to the singleton instance of [Logz].
final Logz logz = Logz();
