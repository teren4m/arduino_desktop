import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/port/list/port_list_dependency.dart';
import 'package:arduino_desktop/settings/settings_dependency.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => ThemeCubit()),
    Bind.singleton((i) => Routes()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(PortListModule.route.list, module: PortListModule()),
    ModuleRoute(SettingsModule.route.settings, module: SettingsModule()),
  ];
}
