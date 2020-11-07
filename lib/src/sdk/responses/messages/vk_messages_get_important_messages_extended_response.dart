import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKMessagesGetImportantMessagesExtendedResponse {
  final VKMessagesMessagesArray messages;

  final List<VKUsersUser> profiles;

  final List<VKGroupsGroup> groups;

  final List<VKMessagesConversation> conversations;

  const VKMessagesGetImportantMessagesExtendedResponse({
    @required this.messages,
    this.profiles,
    this.groups,
    this.conversations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messages': messages?.toMap(),
      'profiles': profiles?.map((item) => item?.toMap()),
      'groups': groups?.map((item) => item?.toMap()),
      'conversations': conversations?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesGetImportantMessagesExtendedResponse.fromMap(
      Map<String, dynamic> map) {
    return VKMessagesGetImportantMessagesExtendedResponse(
      messages: VKMessagesMessagesArray.fromMap(map['messages']),
      profiles: map['profiles']?.map((item) => VKUsersUser.fromMap(item)),
      groups: map['groups']?.map((item) => VKGroupsGroup.fromMap(item)),
      conversations: map['conversations']
          ?.map((item) => VKMessagesConversation.fromMap(item)),
    );
  }
}
