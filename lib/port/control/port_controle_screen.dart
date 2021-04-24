import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/port/control/port_control_dependency.dart';
import 'package:arduino_desktop/port/list/port_list_dependency.dart';

class PortControlScreen extends BaseScreen<PortControlBloc, PortControlState> {
  final PortItem item;

  const PortControlScreen(this.item);

  @override
  Widget? createBody(PortControlBloc bloc, PortControlState state) => PortControlBody(bloc, state);

  @override
  PreferredSizeWidget? createAppBar(PortControlBloc bloc, PortControlState state) => PortControlAppBar(item);
}
