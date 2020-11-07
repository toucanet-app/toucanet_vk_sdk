import 'package:meta/meta.dart';

import 'messages_conversation_peer.dart';
import 'messages_keyboard.dart';
import 'messages_message_request_data.dart';

class VKMessagesConversation {
  final VKMessagesConversationPeer peer;

  /// ID of the last message in conversation.
  final int lastMessageId;

  /// Last message user have read.
  final int inRead;

  /// Last outcoming message have been read by the opponent.
  final int outRead;

  /// Unread messages number.
  final int unreadCount;

  /// Is this conversation uread.
  final bool isMarkedUnread;

  final bool important;

  final bool unanswered;

  final String specialServiceType;

  final VKMessagesMessageRequestData messageRequestData;

  /// Ids of messages with mentions.
  final List<int> mentions;

  final VKMessagesKeyboard currentKeyboard;

  const VKMessagesConversation({
    @required this.peer,
    @required this.lastMessageId,
    @required this.inRead,
    @required this.outRead,
    this.unreadCount,
    this.isMarkedUnread,
    this.important,
    this.unanswered,
    this.specialServiceType,
    this.messageRequestData,
    this.mentions,
    this.currentKeyboard,
  })  : assert(lastMessageId >= 0),
        assert(inRead >= 0),
        assert(outRead >= 0),
        assert(unreadCount >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peer': peer?.toMap(),
      'last_message_id': lastMessageId,
      'in_read': inRead,
      'out_read': outRead,
      'unread_count': unreadCount,
      'is_marked_unread': isMarkedUnread,
      'important': important,
      'unanswered': unanswered,
      'special_service_type': specialServiceType,
      'message_request_data': messageRequestData?.toMap(),
      'mentions': mentions,
      'current_keyboard': currentKeyboard?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesConversation.fromMap(Map<String, dynamic> map) {
    return VKMessagesConversation(
      peer: VKMessagesConversationPeer.fromMap(map['peer']),
      lastMessageId: map['last_message_id'] as int,
      inRead: map['in_read'] as int,
      outRead: map['out_read'] as int,
      unreadCount: map['unread_count'] as int,
      isMarkedUnread: map['is_marked_unread'] as bool,
      important: map['important'] as bool,
      unanswered: map['unanswered'] as bool,
      specialServiceType: map['special_service_type'] as String,
      messageRequestData:
          VKMessagesMessageRequestData.fromMap(map['message_request_data']),
      mentions: map['mentions'] as List<int>,
      currentKeyboard: VKMessagesKeyboard.fromMap(map['current_keyboard']),
    );
  }
}
