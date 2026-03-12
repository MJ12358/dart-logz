part of dart_logz;

/// The color codes for terminal output.
enum _Color {
  /// Green - Used for success messages.
  green('\x1B[32m'),

  /// Yellow - Used for warning messages.

  yellow('\x1B[33m'),

  /// Red - Used for error messages.
  red('\x1B[31m'),

  /// Cyan - Used for debug messages.
  cyan('\x1B[36m'),

  /// Magenta - Used for fatal messages.
  magenta('\x1B[35m'),

  /// Reset - Resets the color to default.
  reset('\x1B[0m');

  /// The ANSI escape code for the color.
  final String code;

  /// Constructor to initialize the color code.
  const _Color(this.code);
}

/// {@template dart_logz}
/// A logging utility that provides color-coded log messages for different
/// log levels such as info, success, warning, error, debug, and fatal.
/// It supports a singleton pattern and optional debug mode for detailed
/// logging.
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

  /// Whether to show debug logs.
  bool debugMode = false;

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
    if (debugMode) {
      _print('Debug: $message', _Color.cyan);
    }
  }

  /// Fatal - Prints in [_Color.magenta] to indicate fatal errors.
  /// StackTrace is optional and only shown in debug mode.
  void f(String message, Object error, [StackTrace? stackTrace]) {
    _print('Fatal: $message', _Color.magenta);
    _print('  Details: $error', _Color.magenta);
    if (debugMode && stackTrace != null) {
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
