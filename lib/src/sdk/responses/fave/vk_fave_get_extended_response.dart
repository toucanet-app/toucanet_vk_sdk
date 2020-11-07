import '../../objects/vk_objects.dart';

class VKFaveGetExtendedResponse {
  /// Total number.
  final int count;

  final List<VKFaveBookmark> items;

  final List<VKUsersUserFull> profiles;

  final List<VKGroupsGroup> groups;

  const VKFaveGetExtendedResponse({
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

  factory VKFaveGetExtendedResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKFaveGetExtendedResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKFaveBookmark>(
            (item) => VKFaveBookmark.fromMap(item),
          )
          ?.toList(),
      profiles: map['profiles']
          ?.map<VKUsersUserFull>(
            (item) => VKUsersUserFull.fromMap(item),
          )
          ?.toList(),
      groups: map['groups']
          ?.map<VKGroupsGroup>(
            (item) => VKGroupsGroup.fromMap(item),
          )
          ?.toList(),
    );
  }
}
