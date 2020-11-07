import 'package:meta/meta.dart';

import 'vk_messages_history_message_attachment.dart';

class VKMessagesHistoryAttachment {
  final VKMessagesHistoryMessageAttachment attachment;

  /// Message ID.
  final int messageId;

  /// Message author's ID.
  final int fromId;

  const VKMessagesHistoryAttachment({
    @required this.attachment,
    @required this.messageId,
    @required this.fromId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachment': attachment?.toMap(),
      'message_id': messageId,
      'from_id': fromId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesHistoryAttachment.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMessagesHistoryAttachment(
      attachment: VKMessagesHistoryMessageAttachment.fromMap(map['attachment']),
      messageId: map['message_id'] as int,
      fromId: map['from_id'] as int,
    );
  }
}
