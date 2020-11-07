class VKNotificationsSendMessageError {
  /// Error code.
  final int code;

  /// Error description.
  final String description;

  const VKNotificationsSendMessageError({
    this.code,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'description': description,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNotificationsSendMessageError.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNotificationsSendMessageError(
      code: map['code'] as int,
      description: map['description'] as String,
    );
  }
}
