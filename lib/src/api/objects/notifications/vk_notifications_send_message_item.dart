import 'vk_notifications_send_message_error.dart';

class VKNotificationsSendMessageItem {
  /// User ID.
  final int userId;

  /// Notification status.
  final bool status;

  final VKNotificationsSendMessageError error;

  const VKNotificationsSendMessageItem({
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

  factory VKNotificationsSendMessageItem.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNotificationsSendMessageItem(
      userId: map['user_id'] as int,
      status: map['status'] as bool,
      error: VKNotificationsSendMessageError.fromMap(map['error']),
    );
  }
}
