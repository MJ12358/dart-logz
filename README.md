# Dart Logz

![pub package](https://img.shields.io/pub/v/dart_logz)

- A stupid simple logging package for Dart.

## Usage

```dart
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
```
