import 'notifications_feedback.dart';
import 'notifications_notification_parent.dart';
import 'notifications_reply.dart';

class VKNotificationsNotification {
  /// Date when the event has been occurred.
  final int date;

  final VKNotificationsFeedback feedback;

  final VKNotificationsNotificationParent parent;

  final VKNotificationsReply reply;

  /// Notification type.
  final String type;

  const VKNotificationsNotification({
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

  factory VKNotificationsNotification.fromMap(Map<String, dynamic> map) {
    return VKNotificationsNotification(
      date: map['date'] as int,
      feedback: VKNotificationsFeedback.fromMap(map['feedback']),
      parent: VKNotificationsNotificationParent.fromMap(map['parent']),
      reply: VKNotificationsReply.fromMap(map['reply']),
      type: map['type'] as String,
    );
  }
}
