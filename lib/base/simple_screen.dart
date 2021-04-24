import '../dependency.dart';

class SimpleScreen extends StatefulWidget {
  const SimpleScreen();

  Widget? createBody(ThemeCubit theme) {
    return null;
  }

  PreferredSizeWidget? createAppBar(ThemeCubit theme) {
    return null;
  }

  Widget? createFloatingButton(ThemeCubit theme) {
    return null;
  }

  @override
  State<StatefulWidget> createState() {
    return _SimpleScreenState();
  }
}

class _SimpleScreenState extends State<SimpleScreen> {
  late ThemeCubit theme;

  _SimpleScreenState();

  @override
  void initState() {
    theme = Modular.get();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWidget(
      builder: () {
        return TranslationWidget(builder: () {
          return Scaffold(
            floatingActionButton: widget.createFloatingButton(theme),
            appBar: widget.createAppBar(theme),
            body: widget.createBody(theme),
          );
        });
      },
      theme: theme,
    );
  }
}
