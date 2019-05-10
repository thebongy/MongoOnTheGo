abstract class Command {
  Map<String, dynamic> toObject();
  CommandResponse parseResponse(Map<String, dynamic> res);
}

class CommandResponse {
  bool status; // 0 for success, -1 for error
  String message;
  Map<String, dynamic> raw;

  CommandResponse(this.status, this.message, this.raw);
}
