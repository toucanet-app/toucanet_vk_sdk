

class NotificationsSendMessageError {
  /// Error code.
  final int code;

  /// Error description.
  final String description;

  const NotificationsSendMessageError({
    this.code,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'description': description,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory NotificationsSendMessageError.fromMap(Map<String, dynamic> map) {
    return NotificationsSendMessageError(
      code: map['code'] as int,
      description: map['description'] as String,
    );
  }
}
