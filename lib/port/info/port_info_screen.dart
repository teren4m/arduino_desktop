import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/port/list/bloc/model/port_item.dart';

class PortInfoScreen extends StatelessWidget {

  final PortItem item;

  PortInfoScreen(this.item);

  @override
  Widget build(BuildContext context) {
    return Text(item.description);
  }
}
