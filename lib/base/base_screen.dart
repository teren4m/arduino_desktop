import '../dependency.dart';

typedef CreateBody = Widget? Function(dynamic bloc, dynamic state);
typedef CreateAppBar = PreferredSizeWidget? Function(dynamic bloc, dynamic state);
typedef CreateFloatingButton = Widget? Function(dynamic bloc, dynamic state);

class BaseScreen<B extends Bloc<dynamic, S>, S> extends StatefulWidget {
  const BaseScreen();

  Widget? createBody(B bloc, S state) {
    return null;
  }

  PreferredSizeWidget? createAppBar(B bloc, S state) {
    return null;
  }

  Widget? createFloatingButton(B bloc, S state) {
    return null;
  }

  @override
  State<StatefulWidget> createState() {
    return _BaseScreenState<B, S>();
  }
}

class _BaseScreenState<B extends Bloc<dynamic, S>, S> extends State<BaseScreen> {
  late B _bloc;
  late ThemeCubit theme;

  _BaseScreenState();

  @override
  void initState() {
    _bloc = Modular.get();
    theme = Modular.get();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _bloc,
      child: BlocBuilder<B, S>(builder: (_, state) {
        return ThemeWidget(
          builder: () {
            return TranslationWidget(builder: () {
              return Scaffold(
                floatingActionButton: widget.createFloatingButton(_bloc, state),
                appBar: widget.createAppBar(_bloc, state),
                body: widget.createBody(_bloc, state),
              );
            });
          },
          theme: theme,
        );
      }),
    );
  }
}
