import 'package:arduino_desktop/dependency.dart';

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
  OpenSettings() : super("PortListEventLoad");
}
