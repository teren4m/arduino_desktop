import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/port/info/widget/port_info_item.dart';
import 'package:arduino_desktop/port/list/port_list_dependency.dart';

class PortInfoScreen extends SimpleScreen {
  final PortItem item;

  PortInfoScreen(this.item);

  @override
  PreferredSizeWidget? createAppBar(ThemeCubit theme) {
    return AppBar(
      title: text(item.name),
    );
  }

  @override
  Widget? createBody(ThemeCubit theme) {
    return ListView(
      children: [
        PortInfoItem(theme: theme, name: Translations.portInfo.productName, info: item.productName),
        PortInfoItem(theme: theme, name: Translations.portInfo.description, info: item.description),
        PortInfoItem(theme: theme, name: Translations.portInfo.manufacturer, info: item.manufacturer),
        PortInfoItem(theme: theme, name: Translations.portInfo.transport, info: item.transport),
        PortInfoItem(theme: theme, name: Translations.portInfo.busNumber, info: item.busNumber),
        PortInfoItem(theme: theme, name: Translations.portInfo.deviceNumber, info: item.deviceNumber),
        PortInfoItem(theme: theme, name: Translations.portInfo.macAddress, info: item.macAddress),
        PortInfoItem(theme: theme, name: Translations.portInfo.productId, info: item.productId),
        PortInfoItem(theme: theme, name: Translations.portInfo.serialNumber, info: item.serialNumber),
        PortInfoItem(theme: theme, name: Translations.portInfo.vendorId, info: item.vendorId),
      ],
    );
  }
}
