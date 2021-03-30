import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/port/list/port_list_dependency.dart';

class PortListScreen extends StatefulWidget {
  @override
  _PortListScreenState createState() {
    return _PortListScreenState();
  }
}

class _PortListScreenState extends State<PortListScreen> {
  late PortListBloc _bloc;

  @override
  void initState() {
    _bloc = Modular.get<PortListBloc>();
    _bloc.loadPorts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _bloc,
      child: BlocBuilder<PortListBloc, PortListState>(builder: (_, state) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.autorenew),
            onPressed: _bloc.reloadPorts,
          ),
          appBar: PortListAppBar(_bloc),
          body: PortListBody(_bloc, state.ports),
        );
      }),
    );
  }
}
