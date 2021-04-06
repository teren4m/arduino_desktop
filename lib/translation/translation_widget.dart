import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/translation/translation_manager.dart';

typedef TranslationWidgetBuilder = Widget Function();
class TranslationWidget extends StatefulWidget {
  final TranslationWidgetBuilder builder;

  const TranslationWidget({required this.builder});

  @override
  State<StatefulWidget> createState() {
    return _TranslationWidgetState();
  }
}

class _TranslationWidgetState extends State<TranslationWidget> {
  late TranslationManager manager;

  @override
  void initState() {
    manager = Modular.get();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: manager.broadcast.stream,
      builder: (_, __) {
        return widget.builder();
      },
    );
  }
}
