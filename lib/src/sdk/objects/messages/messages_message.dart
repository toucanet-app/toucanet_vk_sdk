import 'package:meta/meta.dart';

import '../base/base_bool_int.dart';
import '../base/base_geo.dart';
import 'messages_foreign_message.dart';
import 'messages_keyboard.dart';
import 'messages_message_action.dart';
import 'messages_message_attachment.dart';

class VKMessagesMessage {
  final VKMessagesMessageAction action;

  /// Only for messages from community. Contains user ID of community admin, who sent this message..
  final int adminAuthorId;

  final List<VKMessagesMessageAttachment> attachments;

  /// Unique auto-incremented number for all messages with this peer.
  final int conversationMessageId;

  /// Date when the message has been sent in Unixtime.
  final int date;

  /// Is it an deleted message.
  final VKBaseBoolInt deleted;

  /// Message author's ID.
  final int fromId;

  /// Forwarded messages.
  final List<VKMessagesForeignMessage> fwdMessages;

  final VKBaseGeo geo;

  /// Message ID.
  final int id;

  /// Is it an important message.
  final bool important;

  final bool isHidden;

  /// this message is cropped for bot.
  final bool isCropped;

  final VKMessagesKeyboard keyboard;

  /// Members number.
  final int membersCount;

  /// Information whether the message is outcoming.
  final VKBaseBoolInt out;

  final String payload;

  /// Peer ID.
  final int peerId;

  /// ID used for sending messages. It returned only for outgoing messages.
  final int randomId;

  final String ref;

  final String refSource;

  final VKMessagesForeignMessage replyMessage;

  /// Message text.
  final String text;

  /// Date when the message has been updated in Unixtime.
  final int updateTime;

  /// Was the audio message inside already listened by you.
  final bool wasListened;

  /// Date when the message has been pinned in Unixtime.
  final int pinnedAt;

  const VKMessagesMessage({
    this.action,
    this.adminAuthorId,
    this.attachments,
    this.conversationMessageId,
    @required this.date,
    this.deleted,
    @required this.fromId,
    this.fwdMessages,
    this.geo,
    @required this.id,
    this.important,
    this.isHidden,
    this.isCropped,
    this.keyboard,
    this.membersCount,
    @required this.out,
    this.payload,
    @required this.peerId,
    this.randomId,
    this.ref,
    this.refSource,
    this.replyMessage,
    @required this.text,
    this.updateTime,
    this.wasListened,
    this.pinnedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action?.toMap(),
      'admin_author_id': adminAuthorId,
      'attachments': attachments?.map((item) => item?.toMap()),
      'conversation_message_id': conversationMessageId,
      'date': date,
      'deleted': deleted?.value,
      'from_id': fromId,
      'fwd_messages': fwdMessages?.map((item) => item?.toMap()),
      'geo': geo?.toMap(),
      'id': id,
      'important': important,
      'is_hidden': isHidden,
      'is_cropped': isCropped,
      'keyboard': keyboard?.toMap(),
      'members_count': membersCount,
      'out': out?.value,
      'payload': payload,
      'peer_id': peerId,
      'random_id': randomId,
      'ref': ref,
      'ref_source': refSource,
      'reply_message': replyMessage?.toMap(),
      'text': text,
      'update_time': updateTime,
      'was_listened': wasListened,
      'pinned_at': pinnedAt,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesMessage.fromMap(Map<String, dynamic> map) {
    return VKMessagesMessage(
      action: VKMessagesMessageAction.fromMap(map['action']),
      adminAuthorId: map['admin_author_id'] as int,
      attachments: map['attachments']
          ?.map((item) => VKMessagesMessageAttachment.fromMap(item)),
      conversationMessageId: map['conversation_message_id'] as int,
      date: map['date'] as int,
      deleted: VKBaseBoolInt(map['deleted']),
      fromId: map['from_id'] as int,
      fwdMessages: map['fwd_messages']
          ?.map((item) => VKMessagesForeignMessage.fromMap(item)),
      geo: VKBaseGeo.fromMap(map['geo']),
      id: map['id'] as int,
      important: map['important'] as bool,
      isHidden: map['is_hidden'] as bool,
      isCropped: map['is_cropped'] as bool,
      keyboard: VKMessagesKeyboard.fromMap(map['keyboard']),
      membersCount: map['members_count'] as int,
      out: VKBaseBoolInt(map['out']),
      payload: map['payload'] as String,
      peerId: map['peer_id'] as int,
      randomId: map['random_id'] as int,
      ref: map['ref'] as String,
      refSource: map['ref_source'] as String,
      replyMessage: VKMessagesForeignMessage.fromMap(map['reply_message']),
      text: map['text'] as String,
      updateTime: map['update_time'] as int,
      wasListened: map['was_listened'] as bool,
      pinnedAt: map['pinned_at'] as int,
    );
  }
}
