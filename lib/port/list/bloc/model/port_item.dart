import 'package:arduino_desktop/dependency.dart';

class PortItem extends Equatable {
  final String name;
  final String description;
  final String transport;
  final String busNumber;
  final String deviceNumber;
  final String vendorId;
  final String productId;
  final String manufacturer;
  final String productName;
  final String serialNumber;
  final String macAddress;

  const PortItem({
    required this.name,
    required this.description,
    required this.transport,
    required this.busNumber,
    required this.deviceNumber,
    required this.vendorId,
    required this.productId,
    required this.manufacturer,
    required this.productName,
    required this.serialNumber,
    required this.macAddress,
  });

  @override
  List<Object> get props => [
        name,
        description,
        transport,
        busNumber,
        deviceNumber,
        vendorId,
        productId,
        manufacturer,
        productName,
        serialNumber,
        macAddress
      ];
}
