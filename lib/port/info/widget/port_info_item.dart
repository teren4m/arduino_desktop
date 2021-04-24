import 'package:arduino_desktop/dependency.dart';

class PortInfoItem extends StatelessWidget {
  final String name;
  final String info;
  final ThemeCubit theme;

  PortInfoItem({required this.theme, required this.name, required this.info});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Container(
        color: theme.state.backgroundColor,
        height: 100,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              text(name),
              text(info),
            ],
          ),
        ),
      ),
    );
  }
}
