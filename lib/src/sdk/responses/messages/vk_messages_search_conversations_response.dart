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
      'items': items
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
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
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesSearchConversationsResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMessagesSearchConversationsResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKMessagesConversation>(
            (item) => VKMessagesConversation.fromMap(item),
          )
          ?.toList(),
      profiles: map['profiles']
          ?.map<VKUsersUserFull>(
            (item) => VKUsersUserFull.fromMap(item),
          )
          ?.toList(),
      groups: map['groups']
          ?.map<VKGroupsGroupFull>(
            (item) => VKGroupsGroupFull.fromMap(item),
          )
          ?.toList(),
    );
  }
}
