import 'package:arduino_desktop/app_module.dart';
import 'package:arduino_desktop/app_widget.dart';
import 'package:arduino_desktop/dependency.dart';

void main() => runApp(ModularApp(module: AppModule(), child: AppWidget()));

// class ExampleApp extends StatefulWidget {
//   @override
//   _ExampleAppState createState() => _ExampleAppState();
// }
//
// extension IntToString on int {
//   String toHex() => '0x${toRadixString(16)}';
//   String toPadded([int width = 3]) => toString().padLeft(width, '0');
//   String toTransport() {
//     switch (this) {
//       case SerialPortTransport.usb:
//         return 'USB';
//       case SerialPortTransport.bluetooth:
//         return 'Bluetooth';
//       case SerialPortTransport.native:
//         return 'Native';
//       default:
//         return 'Unknown';
//     }
//   }
// }
//
// class _ExampleAppState extends State<ExampleApp> {
//   var availablePorts = [];
//
//   @override
//   void initState() {
//     super.initState();
//     initPorts();
//   }
//
//   void initPorts() {
//     // setState(() => availablePorts = SerialPort.availablePorts);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Flutter Serial Port example'),
//         ),
//         body: Scrollbar(
//           child: ListView(
//             children: [
//               // for (final address in availablePorts)
//               //   Builder(builder: (context) {
//               //     final port = SerialPort(address);
//               //     return ExpansionTile(
//               //       title: Text(address),
//               //       children: [
//               //         CardListTile('Description', port.description),
//               //         CardListTile('Transport', port.transport.toTransport()),
//               //         CardListTile('USB Bus', port.busNumber?.toPadded()),
//               //         CardListTile('USB Device', port.deviceNumber?.toPadded()),
//               //         CardListTile('Vendor ID', port.vendorId?.toHex()),
//               //         CardListTile('Product ID', port.productId?.toHex()),
//               //         CardListTile('Manufacturer', port.manufacturer),
//               //         CardListTile('Product Name', port.productName),
//               //         CardListTile('Serial Number', port.serialNumber),
//               //         CardListTile('MAC Address', port.macAddress),
//               //       ],
//               //     );
//               //   }),
//             ],
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.refresh),
//           onPressed: () {
//             var portName = SerialPort.availablePorts.first;
//             final port = SerialPort(portName);
//             port.config.baudRate = 9600;
//             var baud = port.config.baudRate;
//             // var config = SerialPortConfig.fromAddress(port.address);
//             // config.baudRate = 9600;
//             // config.
//             // port.config = config;
//             if (!port.openReadWrite()) {
//               print(SerialPort.lastError);
//               return;
//             }
//             // var bson = BSON();
//             // var data = bson.serialize({
//             //   "11": "Tom",
//             //   "2": "Bob",
//             //   "3": "z1234567890я"
//             // });
//             // var b = data.byteList;
//             // var isOpen = port.isOpen;
//             // var bD = b.join(",");
//             // port.write(b);
//             // port.close();
//           },
//         ),
//       ),
//     );
//   }
// }
//
// class CardListTile extends StatelessWidget {
//   final String name;
//   final String value;
//
//   CardListTile(this.name, this.value);
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: ListTile(
//         title: Text(value ?? 'N/A'),
//         subtitle: Text(name),
//       ),
//     );
//   }
// }
