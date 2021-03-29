import 'package:arduino_desktop/dependency.dart';

abstract class PortListEvent extends Equatable {
  const PortListEvent();
}

class Reload extends PortListEvent {
  @override
  List<Object> get props => ["PortListEventReload"];
}

class Load extends PortListEvent {
  @override
  List<Object> get props => ["PortListEventLoad"];
}
