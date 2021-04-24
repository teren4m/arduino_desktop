import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/port/control/port_control_dependency.dart';

class PortControlModule extends Module {
  static var route = const Route();

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute("/", child: (_, args) => PortControlScreen(args.data)),
  ];
}

class Route {
  String get control => '/control';

  const Route();
}
