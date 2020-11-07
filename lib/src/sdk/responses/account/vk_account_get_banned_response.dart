import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKAccountGetBannedResponse {
  /// Total number.
  final int count;

  final List<int> items;

  final List<VKUsersUserMin> profiles;

  final List<VKGroupsGroup> groups;

  const VKAccountGetBannedResponse({
    @required this.count,
    @required this.items,
    this.profiles,
    this.groups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items,
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

  factory VKAccountGetBannedResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAccountGetBannedResponse(
      count: map['count'] as int,
      items: map['items'] as List<int>,
      profiles: map['profiles']
          ?.map<VKUsersUserMin>(
            (item) => VKUsersUserMin.fromMap(item),
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
