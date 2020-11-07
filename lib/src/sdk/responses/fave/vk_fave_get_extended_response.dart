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
      'items': items?.map((item) => item?.toMap()),
      'profiles': profiles?.map((item) => item?.toMap()),
      'groups': groups?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFaveGetExtendedResponse.fromMap(Map<String, dynamic> map) {
    return VKFaveGetExtendedResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKFaveBookmark.fromMap(item)),
      profiles: map['profiles']?.map((item) => VKUsersUserFull.fromMap(item)),
      groups: map['groups']?.map((item) => VKGroupsGroup.fromMap(item)),
    );
  }
}
