import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKMessagesGetConversationMembersResponse {
  /// Chat members count.
  final int count;

  final List<VKMessagesConversationMember> items;

  final VKMessagesChatRestrictions chatRestrictions;

  final List<VKUsersUserFull> profiles;

  final List<VKGroupsGroupFull> groups;

  const VKMessagesGetConversationMembersResponse({
    @required this.count,
    @required this.items,
    this.chatRestrictions,
    this.profiles,
    this.groups,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
      'chat_restrictions': chatRestrictions?.toMap(),
      'profiles': profiles?.map((item) => item?.toMap()),
      'groups': groups?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesGetConversationMembersResponse.fromMap(
      Map<String, dynamic> map) {
    return VKMessagesGetConversationMembersResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map((item) => VKMessagesConversationMember.fromMap(item)),
      chatRestrictions:
          VKMessagesChatRestrictions.fromMap(map['chat_restrictions']),
      profiles: map['profiles']?.map((item) => VKUsersUserFull.fromMap(item)),
      groups: map['groups']?.map((item) => VKGroupsGroupFull.fromMap(item)),
    );
  }
}
