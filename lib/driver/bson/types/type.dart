import 'dart:typed_data';

abstract class BsonType {
  String code;

  static Int8List encodeVal(val) {
  }

  String getCode() {
    return code;
  }
}