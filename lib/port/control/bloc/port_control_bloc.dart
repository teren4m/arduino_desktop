import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/port/control/port_control_dependency.dart';

class PortControlBloc extends Bloc<PortControlEvent, PortControlState> {
  final PortControlInteractor interactor;

  PortControlBloc(this.interactor)
      : super(PortControlState(
          connect: true,
          serialText: "",
        ));

  @override
  Stream<PortControlState> mapEventToState(PortControlEvent event) async* {
    if(event is Connect){

    } else if(event is Disconnect){

    }
  }

  void connect() {
    add(Connect());
  }

  void disconnect() {
    add(Disconnect());
  }
}
