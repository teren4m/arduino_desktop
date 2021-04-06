import 'package:arduino_desktop/dependency.dart';

Text text({
  String path = "",
}) {
  return Text(path).tr();
}

class Translations {
  static const portList = PortListSection();
  static const settings = SettingsSection();
}

class PortListSection {
  final String title = "ports_List.title";

  const PortListSection();
}

class SettingsSection {
  final String title = "settings.title";
  final String darkMode = "settings.dark_mode";
  final String lang = "settings.lang";

  const SettingsSection();
}
