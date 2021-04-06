import 'package:arduino_desktop/app_module.dart';
import 'package:arduino_desktop/app_widget.dart';
import 'package:arduino_desktop/dependency.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
      EasyLocalization(
        child:  ModularApp(module: AppModule(), child: AppWidget()),
        supportedLocales: [
          Locale('en', 'US'),
          Locale('ru', 'RU')
        ],
        path: 'assets/translations',
      )
  );
}
