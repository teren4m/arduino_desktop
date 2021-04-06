import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/port/list/port_list_dependency.dart';

class PortListScreen extends BaseScreen<PortListBloc, PortListState> {
  @override
  Widget? createBody(PortListBloc bloc, PortListState state) {
    return PortListBody(bloc, state.ports);
  }

  @override
  PreferredSizeWidget? createAppBar(PortListBloc bloc, PortListState state) {
    return PortListAppBar(bloc);
  }

  @override
  Widget? createFloatingButton(PortListBloc bloc, PortListState state) {
    return FloatingActionButton(
      child: const Icon(Icons.autorenew),
      onPressed: bloc.reloadPorts,
    );
  }
}
