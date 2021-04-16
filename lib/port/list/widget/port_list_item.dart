import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/port/list/port_list_dependency.dart';

class PortListItem extends StatelessWidget {
  final PortItem item;
  final PortListBloc bloc;
  final ThemeCubit theme;

  const PortListItem(this.bloc, this.item, this.theme);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Container(
            color: theme.state.backgroundColor,
            height: 100,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text(item.description),
                  IconButton(
                    icon: const Icon(Icons.info),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
