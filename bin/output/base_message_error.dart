class BaseMessageError {
  /// Error code.
  final int code;

  /// Error message.
  final String description;

  const BaseMessageError({
    this.code,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'description': description,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory BaseMessageError.fromMap(Map<String, dynamic> map) {
    return BaseMessageError(
      code: map['code'] as int,
      description: map['description'] as String,
    );
  }
}
