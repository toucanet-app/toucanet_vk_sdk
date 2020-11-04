

class BaseRequestParam {
  /// Parameter name.
  final String key;

  /// Parameter value.
  final String value;

  const BaseRequestParam({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory BaseRequestParam.fromMap(Map<String, dynamic> map) {
    return BaseRequestParam(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
