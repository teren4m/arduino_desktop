import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/port/list/port_list_dependency.dart';

class PortControlAppBar extends AppBar {
  final PortItem item;

  PortControlAppBar(this.item) : super(title: Text(item.description));
}
