import 'package:dart_logz/dart_logz.dart';

void main() {
  final Logz logz = Logz();

  LogzConfig.debugMode = true;

  logz.i('This is an info message.');
  logz.s('This is a success message.');
  logz.w('This is a warning message.');
  logz.e('This is an error message.');
  logz.d('This is a debug message.');
  logz.f(
    'This is a fatal message.',
    Exception('Fatal error'),
    StackTrace.current,
  );
}
