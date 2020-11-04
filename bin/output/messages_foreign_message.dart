import 'messages_message_attachment.dart';
import 'messages_foreign_message.dart';
import 'base_geo.dart';
import 'package:meta/meta.dart';

class MessagesForeignMessage {
  final List<MessagesMessageAttachment> attachments;

  /// Conversation message ID.
  final int conversationMessageId;

  /// Date when the message was created.
  final int date;

  /// Message author's ID.
  final int fromId;

  final List<MessagesForeignMessage> fwdMessages;

  final BaseGeo geo;

  /// Message ID.
  final int id;

  /// Peer ID.
  final int peerId;

  final MessagesForeignMessage replyMessage;

  /// Message text.
  final String text;

  /// Date when the message has been updated in Unixtime.
  final int updateTime;

  /// Was the audio message inside already listened by you.
  final bool wasListened;

  /// Additional data sent along with message for developer convenience.
  final String payload;

  const MessagesForeignMessage({
    this.attachments,
    this.conversationMessageId,
    @required this.date,
    @required this.fromId,
    this.fwdMessages,
    this.geo,
    this.id,
    this.peerId,
    this.replyMessage,
    @required this.text,
    this.updateTime,
    this.wasListened,
    this.payload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments': attachments?.map((item) => item?.toMap()),
      'conversation_message_id': conversationMessageId,
      'date': date,
      'from_id': fromId,
      'fwd_messages': fwdMessages?.map((item) => item?.toMap()),
      'geo': geo?.toMap(),
      'id': id,
      'peer_id': peerId,
      'reply_message': replyMessage?.toMap(),
      'text': text,
      'update_time': updateTime,
      'was_listened': wasListened,
      'payload': payload,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory MessagesForeignMessage.fromMap(Map<String, dynamic> map) {
    return MessagesForeignMessage(
      attachments: map['attachments']
          ?.map((item) => MessagesMessageAttachment.fromMap(item)),
      conversationMessageId: map['conversation_message_id'] as int,
      date: map['date'] as int,
      fromId: map['from_id'] as int,
      fwdMessages: map['fwd_messages']
          ?.map((item) => MessagesForeignMessage.fromMap(item)),
      geo: BaseGeo.fromMap(map['geo']),
      id: map['id'] as int,
      peerId: map['peer_id'] as int,
      replyMessage: MessagesForeignMessage.fromMap(map['reply_message']),
      text: map['text'] as String,
      updateTime: map['update_time'] as int,
      wasListened: map['was_listened'] as bool,
      payload: map['payload'] as String,
    );
  }
}
