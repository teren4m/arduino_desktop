import 'package:arduino_desktop/dependency.dart';

class PortListBloc extends Bloc<PortListEvent, PortListState> {
  PortListBloc() : super(PortListState(0));

  @override
  Stream<PortListState> mapEventToState(PortListEvent event) async* {
    yield PortListState(state.count + 1);
  }
}

class PortListEvent extends Equatable {
  const PortListEvent();

  @override
  List<Object> get props => ["PortListEvent"];
}

class PortListState extends Equatable {
  final int count;

  const PortListState(this.count);

  @override
  List<Object> get props => [count];
}
