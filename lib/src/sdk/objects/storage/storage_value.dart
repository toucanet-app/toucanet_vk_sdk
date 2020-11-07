import 'package:meta/meta.dart';

class VKStorageValue {
  final String key;

  final String value;

  const VKStorageValue({
    @required this.key,
    @required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStorageValue.fromMap(Map<String, dynamic> map) {
    return VKStorageValue(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
