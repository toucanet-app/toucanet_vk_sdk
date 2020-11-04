import 'package:meta/meta.dart';

class StorageValue {
  final String key;

  final String value;

  const StorageValue({
    @required this.key,
    @required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory StorageValue.fromMap(Map<String, dynamic> map) {
    return StorageValue(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
