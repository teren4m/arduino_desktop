import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/settings/bloc/settings_bloc.dart';

class DarkModeItem extends StatelessWidget {
  final bool isChecked;
  final SettingsBloc bloc;

  const DarkModeItem(this.bloc, this.isChecked);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: bloc.toggleDarkMode,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Dark Mode"),
              Switch(
                value: isChecked,
                onChanged: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
