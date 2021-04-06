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
    } else if (event is LangEvent) {
      interactor.changeLang(event.item.local);
    }
  }

  void toggleDarkMode() {
    add(DarkModeEvent());
  }

  void lang(LangItem lang) async {
    add(LangEvent(lang));
  }
}
