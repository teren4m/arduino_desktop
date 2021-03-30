import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/settings/settings_dependency.dart';

class Routes {
  void openSettings() {
    Modular.to.pushNamed(SettingsModule.route.settings);
  }
}
