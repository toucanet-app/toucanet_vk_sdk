import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKPhotosGetCommentsExtendedResponse {
  /// Total number.
  final int count;

  /// Real offset of the comments.
  final int realOffset;

  final List<VKWallWallComment> items;

  final List<VKUsersUserFull> profiles;

  final List<VKGroupsGroupFull> groups;

  const VKPhotosGetCommentsExtendedResponse({
    @required this.count,
    this.realOffset,
    @required this.items,
    @required this.profiles,
    @required this.groups,
  }) : assert(realOffset == null || realOffset >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'real_offset': realOffset,
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

  factory VKPhotosGetCommentsExtendedResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPhotosGetCommentsExtendedResponse(
      count: map['count'] as int,
      realOffset: map['real_offset'] as int,
      items: map['items']
          ?.map<VKWallWallComment>(
            (item) => VKWallWallComment.fromMap(item),
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
