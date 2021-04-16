import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/settings/settings_dependency.dart';

class SettingsScreen extends BaseScreen<SettingsBloc, SettingsState> {
  @override
  PreferredSizeWidget? createAppBar(SettingsBloc bloc, SettingsState state) {
    return AppBar(
      title: text(Translations.settings.title),
    );
  }

  @override
  Widget? createBody(SettingsBloc bloc, SettingsState state) {
    return SettingsBody(bloc, state);
  }
}
