import 'package:dart_logz/dart_logz.dart';
import 'package:test/test.dart';

void main() {
  test('Test', () {
    final Logz logz = Logz();
    logz.debugMode = true;

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
  });
}
