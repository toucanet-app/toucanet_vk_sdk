import 'notifications_feedback.dart';
import 'notifications_notification_parent.dart';
import 'notifications_reply.dart';

class NotificationsNotification {
  /// Date when the event has been occurred.
  final int date;

  final NotificationsFeedback feedback;

  final NotificationsNotificationParent parent;

  final NotificationsReply reply;

  /// Notification type.
  final String type;

  const NotificationsNotification({
    this.date,
    this.feedback,
    this.parent,
    this.reply,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'feedback': feedback?.toMap(),
      'parent': parent?.toMap(),
      'reply': reply?.toMap(),
      'type': type,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory NotificationsNotification.fromMap(Map<String, dynamic> map) {
    return NotificationsNotification(
      date: map['date'] as int,
      feedback: NotificationsFeedback.fromMap(map['feedback']),
      parent: NotificationsNotificationParent.fromMap(map['parent']),
      reply: NotificationsReply.fromMap(map['reply']),
      type: map['type'] as String,
    );
  }
}
