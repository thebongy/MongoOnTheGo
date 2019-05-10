import 'dart:typed_data';

class BsonEncoded {
  List<int> bson;

  BsonEncoded.encodeObj(Map<String, dynamic> obj) {

  }

  Int8List toBytes() {

  }

  void addKeyVal(String key, dynamic val) {
  }
}

class BsonDecoded {
  Map<String, dynamic> obj;
  BsonDecoded.decodeBytes(Int8List bson) {
  }
}