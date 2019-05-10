import "command.dart";

class Insert implements Command {
  String database;
  String collection;
  List<Object> documents;

  Insert(this.database, this.collection, this.documents);

  Map<String, dynamic> toObject() {
    return {
      "\$db": database,
      "insert": collection,
      "documents": documents 
    };
  }

  CommandResponse parseResponse(Map<String, dynamic> res) {
    bool status = res["ok"] == 1;
    String count = res["n"];
    String message = "Succesfully inserted $count documents";
    return CommandResponse(status, message, res);
  }
}
