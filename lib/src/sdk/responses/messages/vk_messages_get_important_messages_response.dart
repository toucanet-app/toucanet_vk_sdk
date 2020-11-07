import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKMessagesGetImportantMessagesResponse {
  final VKMessagesMessagesArray messages;

  final List<VKUsersUser> profiles;

  final List<VKGroupsGroup> groups;

  final List<VKMessagesConversation> conversations;

  const VKMessagesGetImportantMessagesResponse({
    @required this.messages,
    this.profiles,
    this.groups,
    this.conversations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messages': messages?.toMap(),
      'profiles': profiles
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'groups': groups
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'conversations': conversations
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesGetImportantMessagesResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMessagesGetImportantMessagesResponse(
      messages: VKMessagesMessagesArray.fromMap(map['messages']),
      profiles: map['profiles']
          ?.map<VKUsersUser>(
            (item) => VKUsersUser.fromMap(item),
          )
          ?.toList(),
      groups: map['groups']
          ?.map<VKGroupsGroup>(
            (item) => VKGroupsGroup.fromMap(item),
          )
          ?.toList(),
      conversations: map['conversations']
          ?.map<VKMessagesConversation>(
            (item) => VKMessagesConversation.fromMap(item),
          )
          ?.toList(),
    );
  }
}
