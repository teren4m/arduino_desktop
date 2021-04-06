import 'dart:async';

class TranslationManager {
  // ignore: close_sinks
  final broadcast = StreamController<String>.broadcast();

  void updateLanguage(String lang) {
    broadcast.add(lang);
  }
}
