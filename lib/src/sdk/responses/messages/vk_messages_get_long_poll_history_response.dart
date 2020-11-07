import '../../objects/vk_objects.dart';

class VKMessagesGetLongPollHistoryResponse {
  final List<List> history;

  final List<VKGroupsGroup> groups;

  final VKMessagesLongpollMessages messages;

  final List<VKUsersUserFull> profiles;

  final List<VKMessagesChat> chats;

  /// Persistence timestamp.
  final int newPts;

  /// Has more.
  final bool more;

  final List<VKMessagesConversation> conversations;

  const VKMessagesGetLongPollHistoryResponse({
    this.history,
    this.groups,
    this.messages,
    this.profiles,
    this.chats,
    this.newPts,
    this.more,
    this.conversations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'history': history,
      'groups': groups
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'messages': messages?.toMap(),
      'profiles': profiles
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'chats': chats
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'new_pts': newPts,
      'more': more,
      'conversations': conversations
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesGetLongPollHistoryResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMessagesGetLongPollHistoryResponse(
      history: map['history'] as List<List>,
      groups: map['groups']
          ?.map<VKGroupsGroup>(
            (item) => VKGroupsGroup.fromMap(item),
          )
          ?.toList(),
      messages: VKMessagesLongpollMessages.fromMap(map['messages']),
      profiles: map['profiles']
          ?.map<VKUsersUserFull>(
            (item) => VKUsersUserFull.fromMap(item),
          )
          ?.toList(),
      chats: map['chats']
          ?.map<VKMessagesChat>(
            (item) => VKMessagesChat.fromMap(item),
          )
          ?.toList(),
      newPts: map['new_pts'] as int,
      more: map['more'] as bool,
      conversations: map['conversations']
          ?.map<VKMessagesConversation>(
            (item) => VKMessagesConversation.fromMap(item),
          )
          ?.toList(),
    );
  }
}
