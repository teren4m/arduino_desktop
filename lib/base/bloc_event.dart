import 'package:arduino_desktop/dependency.dart';

abstract class BlocEvent extends Equatable {
  final String name;

  const BlocEvent(this.name);

  @override
  List<Object?> get props => [name];
}
