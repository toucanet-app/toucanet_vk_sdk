class VKBaseMessageError {
  /// Error code.
  final int code;

  /// Error message.
  final String description;

  const VKBaseMessageError({
    this.code,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'description': description,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseMessageError.fromMap(Map<String, dynamic> map) {
    return VKBaseMessageError(
      code: map['code'] as int,
      description: map['description'] as String,
    );
  }
}
