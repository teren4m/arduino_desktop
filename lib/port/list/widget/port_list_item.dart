import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/port/list/port_list_dependency.dart';

class PortListItem extends StatelessWidget {
  final PortItem item;

  const PortListItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        color: Colors.blue,
        height: 100,
      ),
    );
  }
}
