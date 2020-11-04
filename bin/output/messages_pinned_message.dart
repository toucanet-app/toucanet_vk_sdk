import 'messages_message_attachment.dart';
import 'messages_foreign_message.dart';
import 'base_geo.dart';
import 'messages_keyboard.dart';
import 'package:meta/meta.dart';

class MessagesPinnedMessage {
  final List<MessagesMessageAttachment> attachments;

  /// Unique auto-incremented number for all messages with this peer.
  final int conversationMessageId;

  /// Date when the message has been sent in Unixtime.
  final int date;

  /// Message author's ID.
  final int fromId;

  /// Forwarded messages.
  final List<MessagesForeignMessage> fwdMessages;

  final BaseGeo geo;

  /// Message ID.
  final int id;

  /// Peer ID.
  final int peerId;

  final MessagesForeignMessage replyMessage;

  /// Message text.
  final String text;

  final MessagesKeyboard keyboard;

  const MessagesPinnedMessage({
    this.attachments,
    this.conversationMessageId,
    @required this.date,
    @required this.fromId,
    this.fwdMessages,
    this.geo,
    @required this.id,
    @required this.peerId,
    this.replyMessage,
    @required this.text,
    this.keyboard,
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
      'keyboard': keyboard?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory MessagesPinnedMessage.fromMap(Map<String, dynamic> map) {
    return MessagesPinnedMessage(
      attachments: map['attachments']?.map((item) => MessagesMessageAttachment.fromMap(item)),
      conversationMessageId: map['conversation_message_id'] as int,
      date: map['date'] as int,
      fromId: map['from_id'] as int,
      fwdMessages: map['fwd_messages']?.map((item) => MessagesForeignMessage.fromMap(item)),
      geo: BaseGeo.fromMap(map['geo']),
      id: map['id'] as int,
      peerId: map['peer_id'] as int,
      replyMessage: MessagesForeignMessage.fromMap(map['reply_message']),
      text: map['text'] as String,
      keyboard: MessagesKeyboard.fromMap(map['keyboard']),
    );
  }
}
