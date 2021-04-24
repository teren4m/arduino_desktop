import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/port/info/port_info_dependency.dart';

class PortInfoModule extends Module {
  static var route = const Route();

  @override
  final List<Bind> binds = [
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute("/", child: (_, args) => PortInfoScreen(args.data)),
  ];
}

class Route {
  String get info => '/info';

  const Route();
}
