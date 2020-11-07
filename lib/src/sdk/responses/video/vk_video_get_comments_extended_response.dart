import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKVideoGetCommentsExtendedResponse {
  /// Total number.
  final int count;

  final List<VKWallWallComment> items;

  final List<VKUsersUserMin> profiles;

  final List<VKGroupsGroupFull> groups;

  const VKVideoGetCommentsExtendedResponse({
    @required this.count,
    @required this.items,
    @required this.profiles,
    @required this.groups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
      'profiles': profiles?.map((item) => item?.toMap())?.toList(),
      'groups': groups?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKVideoGetCommentsExtendedResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKVideoGetCommentsExtendedResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map((item) => VKWallWallComment.fromMap(item))
          ?.toList(),
      profiles: map['profiles']
          ?.map((item) => VKUsersUserMin.fromMap(item))
          ?.toList(),
      groups: map['groups']
          ?.map((item) => VKGroupsGroupFull.fromMap(item))
          ?.toList(),
    );
  }
}
