import 'package:arduino_desktop/dependency.dart';

class SettingsInteractor {
  final ThemeCubit theme;

  const SettingsInteractor(this.theme);

  Future<bool> toggleDarkMode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isDarkMode = (prefs.getBool('darkMode') ?? false);
    prefs.setBool('darkMode', !isDarkMode);
    theme.toggleTheme();
    return !isDarkMode;
  }

  Future<bool> isDarkMode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('darkMode') ?? false;
  }
}
