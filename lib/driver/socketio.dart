import 'dart:io';

import 'dart:typed_data';

class TCPSocket {
  Socket sock;
  void connect(String host, int port, void onData(List<int> data), Function onError, void onDone()) async {
      sock = await Socket.connect(host, port);
      sock.listen(onData, onDone: onDone, onError: onError);
  }

  void sendBytes(Int8List data) {
    sock.add(data);
  }
}
