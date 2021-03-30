import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/settings/settings_dependency.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final SettingsInteractor interactor;

  SettingsBloc(this.interactor)
      : super(SettingsState(isDarkModeEnable: false)) {
    interactor
        .isDarkMode()
        .then((value) => emit(state.copy(isDarkModeEnable: value)));
  }

  @override
  Stream<SettingsState> mapEventToState(SettingsEvent event) async* {
    if (event is DarkModeEvent) {
      var isDarkMode = await interactor.toggleDarkMode();
      yield state.copy(isDarkModeEnable: isDarkMode);
    }
  }

  void toggleDarkMode() {
    add(DarkModeEvent());
  }
}
