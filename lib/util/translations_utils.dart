import 'package:arduino_desktop/dependency.dart';

Text text(String text,) {
  return Text(text).tr();
}

class Translations {
  static const portList = PortListSection();
  static const portControl = PortControlSection();
  static const portInfo = PortInfoSection();
  static const settings = SettingsSection();
}

class PortListSection {
  final String title = "ports_List.title";

  const PortListSection();
}

class PortControlSection {
  final String connect = "ports_control.connect";
  final String disconnect = "ports_control.disconnect";

  const PortControlSection();
}

class PortInfoSection {
  final String description = "ports_info.description";
  final String transport = "ports_info.transport";
  final String busNumber = "ports_info.busNumber";
  final String deviceNumber = "ports_info.deviceNumber";
  final String vendorId = "ports_info.vendorId";
  final String productId = "ports_info.productId";
  final String manufacturer = "ports_info.manufacturer";
  final String productName = "ports_info.productName";
  final String serialNumber = "ports_info.serialNumber";
  final String macAddress = "ports_info.macAddress";

  const PortInfoSection();
}

class SettingsSection {
  final String title = "settings.title";
  final String darkMode = "settings.dark_mode";
  final String lang = "settings.lang";

  const SettingsSection();
}
