import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/port/list/port_list_dependency.dart';

class PortItemMapper {
  PortItem toPortItem(String name) {
    var port = SerialPort(name);
    var portItem = PortItem(
      name: name,
      description: port.description ?? "No description",
      transport: port.transport.toTransport(),
      busNumber: port.busNumber?.toPadded() ?? "No bus number",
      deviceNumber: port.deviceNumber?.toPadded() ?? "No device number",
      vendorId: port.vendorId?.toHex() ?? "No vendor id",
      productId: port.productId?.toHex() ?? "No product id",
      manufacturer: port.manufacturer ?? "No manufacturer",
      productName: port.productName ?? "No product name",
      serialNumber: port.serialNumber ?? "No serial number",
      macAddress: port.macAddress ?? "No mac address",
    );

    port.close();
    return portItem;
  }
}
