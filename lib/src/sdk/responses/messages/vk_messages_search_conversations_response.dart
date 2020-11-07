import '../../objects/vk_objects.dart';

class VKMessagesSearchConversationsResponse {
  /// Total results number.
  final int count;

  final List<VKMessagesConversation> items;

  final List<VKUsersUserFull> profiles;

  final List<VKGroupsGroupFull> groups;

  const VKMessagesSearchConversationsResponse({
    this.count,
    this.items,
    this.profiles,
    this.groups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
      'profiles': profiles?.map((item) => item?.toMap()),
      'groups': groups?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesSearchConversationsResponse.fromMap(
      Map<String, dynamic> map) {
    return VKMessagesSearchConversationsResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKMessagesConversation.fromMap(item)),
      profiles: map['profiles']?.map((item) => VKUsersUserFull.fromMap(item)),
      groups: map['groups']?.map((item) => VKGroupsGroupFull.fromMap(item)),
    );
  }
}
