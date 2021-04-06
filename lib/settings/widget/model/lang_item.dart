import 'package:arduino_desktop/dependency.dart';

class LangItem extends Equatable {

  final String name;
  final String local;

  const LangItem(this.name, this.local);

  @override
  List<Object?> get props => [name, local];
}
