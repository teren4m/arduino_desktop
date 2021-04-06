import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/translation/translation_manager.dart';

class SettingsInteractor {
  final Settings settings;
  final TranslationManager translationManager;

  const SettingsInteractor(this.settings, this.translationManager);

  Future toggleDarkMode() async {
    await settings.toggleDarkMode();
    return await settings.isDarkMode();
  }

  Future<bool> isDarkMode() {
    return settings.isDarkMode();
  }

  Future changeLang(String lang) async {
    translationManager.updateLanguage(lang);
  }
}
