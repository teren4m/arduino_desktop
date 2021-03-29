import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/port/list/port_list_dependency.dart';

class PortListModule extends Module {
  static var route = const Route();

  @override
  final List<Bind> binds = [
    Bind.factory((i) => PortItemMapper()),
    Bind.factory((i) => PortListInteractor(i.get())),
    Bind.factory((i) => PortListBloc(i.get())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(route.list, child: (_, __) => PortListScreen()),
  ];
}

class Route {
  String get list => '/list';

  const Route();
}
