import 'package:arduino_desktop/dependency.dart';

class PortControlInteractor {
  late SerialPort _port;
  bool isConnected = false;

  Stream<String> connect(String name, int baudRate) async* {
    _port = SerialPort(name);
    _port.config.baudRate = baudRate;
    if (!_port.openReadWrite()) {}
    final reader = SerialPortReader(_port);
    reader.stream.listen((data) {
      print('received: $data');
    });
    await for (final item in reader.stream) {
      print("Data: $item");
      yield item.toString();
    }
  }

  void disconnect() {}
}
