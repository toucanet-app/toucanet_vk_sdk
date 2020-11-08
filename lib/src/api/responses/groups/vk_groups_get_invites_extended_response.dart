import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKGroupsGetInvitesExtendedResponse {
  /// Total communities number.
  final int count;

  final List<VKGroupsGroupXtrInvitedBy> items;

  final List<VKUsersUserMin> profiles;

  final List<VKGroupsGroupFull> groups;

  const VKGroupsGetInvitesExtendedResponse({
    @required this.count,
    @required this.items,
    @required this.profiles,
    @required this.groups,
  }) : assert(count >= 0);

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

  factory VKGroupsGetInvitesExtendedResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsGetInvitesExtendedResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKGroupsGroupXtrInvitedBy>(
            (item) => VKGroupsGroupXtrInvitedBy.fromMap(item),
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
