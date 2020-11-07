class VKSecureSmsNotification {
  /// Application ID.
  final String appId;

  /// Date when message has been sent in Unixtime.
  final String date;

  /// Notification ID.
  final String id;

  /// Messsage text.
  final String message;

  /// User ID.
  final String userId;

  const VKSecureSmsNotification({
    this.appId,
    this.date,
    this.id,
    this.message,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'app_id': appId,
      'date': date,
      'id': id,
      'message': message,
      'user_id': userId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKSecureSmsNotification.fromMap(Map<String, dynamic> map) {
    return VKSecureSmsNotification(
      appId: map['app_id'] as String,
      date: map['date'] as String,
      id: map['id'] as String,
      message: map['message'] as String,
      userId: map['user_id'] as String,
    );
  }
}
