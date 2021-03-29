import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/port/list/bloc/model/port_item.dart';

class PortListState extends Equatable {
  final List<PortItem> ports;

  PortListState(this.ports);
  PortListState.empty() : this(List.empty());

  @override
  List<Object> get props => [ports];
}
