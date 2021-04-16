import 'package:arduino_desktop/dependency.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(_lightTheme);

  static final _lightTheme = ThemeData(
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
    ),
    brightness: Brightness.light,
  );

  static final _darkTheme = ThemeData(
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.black,
    ),
    brightness: Brightness.dark,
  );

  /// Toggles the current brightness between light and dark.
  void toggleTheme() {
    emit(state.brightness == Brightness.dark ? _lightTheme : _darkTheme);
  }

  void setupDarkTheme() {
    emit(_darkTheme);
  }

  void setupLightTheme() {
    emit(_lightTheme);
  }
}

typedef ThemeWidgetBuilder = Widget Function();

class ThemeWidget extends StatefulWidget {
  final ThemeWidgetBuilder builder;
  final ThemeCubit theme;

  const ThemeWidget({required this.theme, required this.builder});

  @override
  State<StatefulWidget> createState() {
    return _ThemeWidgetState();
  }
}

class _ThemeWidgetState extends State<ThemeWidget> {

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: widget.theme.stream,
      builder: (_, __) {
        return widget.builder();
      },
    );
  }
}

