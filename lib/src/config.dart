part of dart_logz;

/// {@template dart_logz.config}
/// Configuration options for the [Logz] logging utility.
/// {@endtemplate}
class LogzConfig {
  /// {@macro dart_logz.config}
  ///
  /// Private constructor to prevent instantiation.
  LogzConfig._();

  /// Whether to show debug logs.
  static bool debugMode = false;
}
