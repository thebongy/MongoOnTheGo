import './bson/bson.dart';
import './commands/command.dart';
import './socketio.dart';

class WireProtocol {
  String url;
  String port;
  TCPSocket sock;
  WireProtocol(this.url, this.port);
  Future<bool> connect() async {

  }
  CommandResponse sendCommand(Command comm) {
  }
}