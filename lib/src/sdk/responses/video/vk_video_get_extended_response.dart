import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKVideoGetExtendedResponse {
  /// Total number.
  final int count;

  final List<VKVideoVideoFull> items;

  final List<VKUsersUserMin> profiles;

  final List<VKGroupsGroupFull> groups;

  const VKVideoGetExtendedResponse({
    @required this.count,
    @required this.items,
    @required this.profiles,
    @required this.groups,
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

  factory VKVideoGetExtendedResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKVideoGetExtendedResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKVideoVideoFull>(
            (item) => VKVideoVideoFull.fromMap(item),
          )
          ?.toList(),
      profiles: map['profiles']
          ?.map<VKUsersUserMin>(
            (item) => VKUsersUserMin.fromMap(item),
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
