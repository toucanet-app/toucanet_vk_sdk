import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKMessagesPinResponse {
  final List<VKMessagesMessageAttachment> attachments;

  /// Unique auto-incremented number for all messages with this peer.
  final int conversationMessageId;

  /// Date when the message has been sent in Unixtime.
  final int date;

  /// Message author's ID.
  final int fromId;

  /// Forwarded messages.
  final List<VKMessagesForeignMessage> fwdMessages;

  final VKBaseGeo geo;

  /// Message ID.
  final int id;

  /// Peer ID.
  final int peerId;

  final VKMessagesForeignMessage replyMessage;

  /// Message text.
  final String text;

  final VKMessagesKeyboard keyboard;

  const VKMessagesPinResponse({
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
      'attachments': attachments
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'conversation_message_id': conversationMessageId,
      'date': date,
      'from_id': fromId,
      'fwd_messages': fwdMessages
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'geo': geo?.toMap(),
      'id': id,
      'peer_id': peerId,
      'reply_message': replyMessage?.toMap(),
      'text': text,
      'keyboard': keyboard?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesPinResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMessagesPinResponse(
      attachments: map['attachments']
          ?.map<VKMessagesMessageAttachment>(
            (item) => VKMessagesMessageAttachment.fromMap(item),
          )
          ?.toList(),
      conversationMessageId: map['conversation_message_id'] as int,
      date: map['date'] as int,
      fromId: map['from_id'] as int,
      fwdMessages: map['fwd_messages']
          ?.map<VKMessagesForeignMessage>(
            (item) => VKMessagesForeignMessage.fromMap(item),
          )
          ?.toList(),
      geo: VKBaseGeo.fromMap(map['geo']),
      id: map['id'] as int,
      peerId: map['peer_id'] as int,
      replyMessage: VKMessagesForeignMessage.fromMap(map['reply_message']),
      text: map['text'] as String,
      keyboard: VKMessagesKeyboard.fromMap(map['keyboard']),
    );
  }
}
