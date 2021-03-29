import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/port/list/port_list_bloc.dart';

class PortListScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var bloc = Modular.get<PortListBloc>();
    return BlocProvider(
      create: (_) => bloc,
      child: BlocBuilder<PortListBloc, PortListState>(builder: (_, event) {
        var str = "data: " + event.count.toString();
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            child: const Text("Add"),
            onPressed: () => bloc.add(PortListEvent()),
          ),
          appBar: AppBar(
            title: const Text("Some app"),
          ),
          body: ListView(
            children: [
              Text(str),
            ],
          ),
        );
      }),
    );
  }
}
