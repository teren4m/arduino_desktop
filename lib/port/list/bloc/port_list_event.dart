import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/port/list/bloc/model/port_item.dart';

abstract class PortListEvent extends Equatable {
  final String name;

  const PortListEvent(this.name);

  @override
  List<Object> get props => [name];
}

class Reload extends PortListEvent {
  Reload() : super("PortListEventReload");
}

class Load extends PortListEvent {
  Load() : super("PortListEventLoad");
}

class OpenSettings extends PortListEvent {
  OpenSettings() : super("OpenSettings");
}

class OpenInfo extends PortListEvent {
  final PortItem portItem;

  const OpenInfo(this.portItem) : super("OpenInfo");
}

class OpenControl extends PortListEvent {
  final PortItem portItem;

  const OpenControl(this.portItem) : super("OpenControl");
}
