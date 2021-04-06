import 'package:arduino_desktop/dependency.dart';

class Settings {
  final ThemeCubit theme;
  late SharedPreferences _sharedPreferences;

  static const DARK_MODE_KEY = 'darkMode';
  static const LANG_KEY = 'LANG_KEY';

  Settings(this.theme);

  Future init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    if (await isDarkMode()) {
      theme.setupDarkTheme();
    } else {
      theme.setupLightTheme();
    }
  }

  Future<bool> isDarkMode() async {
    return _sharedPreferences.getBool(DARK_MODE_KEY) ?? false;
  }

  Future toggleDarkMode() async {
    var darkMode = !(await isDarkMode());
    _sharedPreferences.setBool(DARK_MODE_KEY, darkMode);
    if (darkMode) {
      theme.setupDarkTheme();
    } else {
      theme.setupLightTheme();
    }
  }
}
