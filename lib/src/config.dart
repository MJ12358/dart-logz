part of '../dart_logz.dart';

/// Configuration options for the [Logz] logging utility.
abstract class LogzConfig {
  /// Private constructor to prevent instantiation.
  LogzConfig._();

  /// Whether to show debug logs.
  static bool debugMode = false;
}
