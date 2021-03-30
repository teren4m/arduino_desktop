import 'package:arduino_desktop/dependency.dart';

class SettingsState extends Equatable {
  final bool isDarkModeEnable;

  const SettingsState({required this.isDarkModeEnable});

  SettingsState copy({bool? isDarkModeEnable}) {
    return SettingsState(
        isDarkModeEnable: isDarkModeEnable ?? this.isDarkModeEnable);
  }

  @override
  List<Object?> get props => [isDarkModeEnable];
}
