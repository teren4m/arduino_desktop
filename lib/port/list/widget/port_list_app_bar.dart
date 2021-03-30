import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/port/list/port_list_dependency.dart';

class PortListAppBar extends AppBar {
  PortListAppBar(PortListBloc bloc)
      : super(
          title: const Text("Ports list"),
          actions: [
            Ink(
              decoration: const ShapeDecoration(
                color: Colors.transparent,
                shape: CircleBorder(),
              ),
              child: IconButton(
                icon: const Icon(Icons.settings),
                onPressed: bloc.openSettings,
              ),
            ),
          ],
        );
}
