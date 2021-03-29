import 'package:arduino_desktop/app_module.dart';
import 'package:arduino_desktop/app_widget.dart';
import 'package:arduino_desktop/dependency.dart';

void main(){
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}