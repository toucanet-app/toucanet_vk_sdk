class VKBaseRequestParam {
  /// Parameter name.
  final String key;

  /// Parameter value.
  final String value;

  const VKBaseRequestParam({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseRequestParam.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKBaseRequestParam(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
