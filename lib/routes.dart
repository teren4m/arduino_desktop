import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/port/control/port_control_dependency.dart';
import 'package:arduino_desktop/port/info/port_info_module.dart';
import 'package:arduino_desktop/port/list/port_list_dependency.dart';
import 'package:arduino_desktop/settings/settings_dependency.dart';

class Routes {
  void openSettings() {
    Modular.to.pushNamed(SettingsModule.route.settings);
  }

  void openInfo(PortItem item) {
    Modular.to.pushNamed(PortInfoModule.route.info, arguments: item);
  }

  void openControl(PortItem item) {
    Modular.to.pushNamed(PortControlModule.route.control, arguments: item);
  }
}
