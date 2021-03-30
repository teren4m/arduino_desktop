import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/port/list/port_list_dependency.dart';

class PortListBody extends StatelessWidget {
  final PortListBloc bloc;
  final List<PortItem> ports;

  const PortListBody(this.bloc, this.ports);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: ports.map((e) => PortListItem(e)).toList(),
      ),
    );
  }
}
