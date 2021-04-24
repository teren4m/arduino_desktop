import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/port/control/port_control_dependency.dart';
import 'package:arduino_desktop/port/info/port_info_module.dart';
import 'package:arduino_desktop/port/list/port_list_dependency.dart';
import 'package:arduino_desktop/settings.dart';
import 'package:arduino_desktop/settings/settings_dependency.dart';
import 'package:arduino_desktop/translation/translation_manager.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => TranslationManager()),
    Bind.singleton((i) => ThemeCubit()),
    Bind.singleton((i) => Settings(i.get())),
    Bind.singleton((i) => Routes()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(PortListModule.route.list, module: PortListModule()),
    ModuleRoute(SettingsModule.route.settings, module: SettingsModule()),
    ModuleRoute(PortInfoModule.route.info, module: PortInfoModule()),
    ModuleRoute(PortControlModule.route.control, module: PortControlModule()),
  ];
}
