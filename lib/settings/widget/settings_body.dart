import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/settings/settings_dependency.dart';

class SettingsBody extends StatelessWidget {
  final SettingsBloc bloc;
  final SettingsState state;

  const SettingsBody(this.bloc, this.state);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [DarkModeItem(bloc, state.isDarkModeEnable)],
    );
  }
}
