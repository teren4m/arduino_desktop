import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/port/control/port_control_dependency.dart';

class PortControlBody extends StatelessWidget {
  final PortControlBloc bloc;
  final PortControlState state;

  const PortControlBody(this.bloc, this.state);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          child: text(state.connect ? Translations.portControl.connect : Translations.portControl.disconnect),
          onPressed: () {
            if (state.connect) {
              bloc.connect();
            } else {
              bloc.disconnect();
            }
          },
        ),
        Text(state.serialText)
      ],
    );
  }
}
