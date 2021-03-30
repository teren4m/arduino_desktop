import 'package:arduino_desktop/dependency.dart';

abstract class SettingsEvent extends BlocEvent{
  const SettingsEvent(String name) : super(name);
}

class DarkModeEvent extends SettingsEvent{
  const DarkModeEvent() : super("DarkModeEvent");
}