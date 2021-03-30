import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/port/list/port_list_dependency.dart';

class PortListBloc extends Bloc<PortListEvent, PortListState> {
  final PortListInteractor interactor;
  final Routes routes;

  PortListBloc(this.interactor, this.routes) : super(PortListState.empty());

  @override
  Stream<PortListState> mapEventToState(PortListEvent event) async* {
    if (event is Reload || event is Load) {
      var ports = await interactor.ports();
      yield PortListState(ports);
    } else if (event is OpenSettings) {
      routes.openSettings();
    }
  }

  void loadPorts() {
    add(Load());
  }

  void reloadPorts() {
    add(Reload());
  }

  void openSettings() {
    add(OpenSettings());
  }
}
