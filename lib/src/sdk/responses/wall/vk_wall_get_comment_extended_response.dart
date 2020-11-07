import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKWallGetCommentExtendedResponse {
  final List<VKWallWallComment> items;

  final List<VKUsersUser> profiles;

  final List<VKGroupsGroup> groups;

  const VKWallGetCommentExtendedResponse({
    @required this.items,
    @required this.profiles,
    @required this.groups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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

  factory VKWallGetCommentExtendedResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKWallGetCommentExtendedResponse(
      items: map['items']
          ?.map<VKWallWallComment>(
            (item) => VKWallWallComment.fromMap(item),
          )
          ?.toList(),
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
    );
  }
}
