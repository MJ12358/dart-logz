part of dart_logz;

/// {@template dart_logz.color}
/// The color codes for terminal output.
/// {@endtemplate}
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

  /// {@macro dart_logz.color}
  const _Color(this.code);

  /// The ANSI escape code for the color.
  final String code;
}
