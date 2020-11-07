import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKMessagesGetConversationsResponse {
  /// Total number.
  final int count;

  /// Unread dialogs number.
  final int unreadCount;

  final List<VKMessagesConversationWithMessage> items;

  final List<VKUsersUserFull> profiles;

  final List<VKGroupsGroupFull> groups;

  const VKMessagesGetConversationsResponse({
    @required this.count,
    this.unreadCount,
    @required this.items,
    this.profiles,
    this.groups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'unread_count': unreadCount,
      'items': items?.map((item) => item?.toMap()),
      'profiles': profiles?.map((item) => item?.toMap()),
      'groups': groups?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesGetConversationsResponse.fromMap(Map<String, dynamic> map) {
    return VKMessagesGetConversationsResponse(
      count: map['count'] as int,
      unreadCount: map['unread_count'] as int,
      items: map['items']
          ?.map((item) => VKMessagesConversationWithMessage.fromMap(item)),
      profiles: map['profiles']?.map((item) => VKUsersUserFull.fromMap(item)),
      groups: map['groups']?.map((item) => VKGroupsGroupFull.fromMap(item)),
    );
  }
}
