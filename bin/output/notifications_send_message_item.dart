import 'notifications_send_message_error.dart';

class NotificationsSendMessageItem {
  /// User ID.
  final int userId;

  /// Notification status.
  final bool status;

  final NotificationsSendMessageError error;

  const NotificationsSendMessageItem({
    this.userId,
    this.status,
    this.error,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': userId,
      'status': status,
      'error': error?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory NotificationsSendMessageItem.fromMap(Map<String, dynamic> map) {
    return NotificationsSendMessageItem(
      userId: map['user_id'] as int,
      status: map['status'] as bool,
      error: NotificationsSendMessageError.fromMap(map['error']),
    );
  }
}
