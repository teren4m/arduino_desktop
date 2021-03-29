import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/port/list/port_list_dependency.dart';

class PortListInteractor {
  final PortItemMapper portItemMapper;

  PortListInteractor(this.portItemMapper);

  Future<List<PortItem>> ports() async {
    var ports = SerialPort.availablePorts;
    return ports.map((e) => portItemMapper.toPortItem(e)).toList();
  }
}
