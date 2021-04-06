import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/settings/settings_dependency.dart';

abstract class SettingsEvent extends BlocEvent {
  const SettingsEvent(String name) : super(name);
}

class DarkModeEvent extends SettingsEvent {
  const DarkModeEvent() : super("DarkModeEvent");
}

class LangEvent extends SettingsEvent {
  final LangItem item;

  const LangEvent(this.item) : super("LangItem");

  @override
  List<Object?> get props => super.props + [item];
}
