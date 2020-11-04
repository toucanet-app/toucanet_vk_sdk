import 'messages_history_message_attachment.dart';
import 'package:meta/meta.dart';

class MessagesHistoryAttachment {
  final MessagesHistoryMessageAttachment attachment;

  /// Message ID.
  final int messageId;

  /// Message author's ID.
  final int fromId;

  const MessagesHistoryAttachment({
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

  factory MessagesHistoryAttachment.fromMap(Map<String, dynamic> map) {
    return MessagesHistoryAttachment(
      attachment: MessagesHistoryMessageAttachment.fromMap(map['attachment']),
      messageId: map['message_id'] as int,
      fromId: map['from_id'] as int,
    );
  }
}
