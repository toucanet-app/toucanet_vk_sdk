import 'package:meta/meta.dart';

import '../base/vk_base_geo.dart';
import 'vk_messages_message_attachment.dart';

class VKMessagesForeignMessage {
  final List<VKMessagesMessageAttachment> attachments;

  /// Conversation message ID.
  final int conversationMessageId;

  /// Date when the message was created.
  final int date;

  /// Message author's ID.
  final int fromId;

  final List<VKMessagesForeignMessage> fwdMessages;

  final VKBaseGeo geo;

  /// Message ID.
  final int id;

  /// Peer ID.
  final int peerId;

  final VKMessagesForeignMessage replyMessage;

  /// Message text.
  final String text;

  /// Date when the message has been updated in Unixtime.
  final int updateTime;

  /// Was the audio message inside already listened by you.
  final bool wasListened;

  /// Additional data sent along with message for developer convenience.
  final String payload;

  const VKMessagesForeignMessage({
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
      'attachments': attachments?.map((item) => item?.toMap())?.toList(),
      'conversation_message_id': conversationMessageId,
      'date': date,
      'from_id': fromId,
      'fwd_messages': fwdMessages?.map((item) => item?.toMap())?.toList(),
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

  factory VKMessagesForeignMessage.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMessagesForeignMessage(
      attachments: map['attachments']
          ?.map((item) => VKMessagesMessageAttachment.fromMap(item))
          ?.toList(),
      conversationMessageId: map['conversation_message_id'] as int,
      date: map['date'] as int,
      fromId: map['from_id'] as int,
      fwdMessages: map['fwd_messages']
          ?.map((item) => VKMessagesForeignMessage.fromMap(item))
          ?.toList(),
      geo: VKBaseGeo.fromMap(map['geo']),
      id: map['id'] as int,
      peerId: map['peer_id'] as int,
      replyMessage: VKMessagesForeignMessage.fromMap(map['reply_message']),
      text: map['text'] as String,
      updateTime: map['update_time'] as int,
      wasListened: map['was_listened'] as bool,
      payload: map['payload'] as String,
    );
  }
}
