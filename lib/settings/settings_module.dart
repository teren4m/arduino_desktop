import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/settings/settings_dependency.dart';

class SettingsModule extends Module {
  static var route = const Route();

  @override
  List<Bind<Object>> get binds => [
        Bind.factory((i) => SettingsInteractor(i.get())),
        Bind.factory((i) => SettingsBloc(i.get())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (_, __) => SettingsScreen()),
      ];
}

class Route {
  String get settings => '/settings';

  const Route();
}
