import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/port/list/port_list_dependency.dart';
import 'package:arduino_desktop/theme.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Settings settings = Modular.get();
    settings.init().then((x) {});
    return BlocProvider(
      create: (_) => Modular.get<ThemeCubit>(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (_, theme) {
          return MaterialApp(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            theme: theme,
            initialRoute: PortListModule.route.list,
          ).modular();
        },
      ),
    );
  }
}
