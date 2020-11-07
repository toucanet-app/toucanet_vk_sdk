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
      'items': items?.map((item) => item?.toMap()),
      'profiles': profiles?.map((item) => item?.toMap()),
      'groups': groups?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsGetInvitesExtendedResponse.fromMap(Map<String, dynamic> map) {
    return VKGroupsGetInvitesExtendedResponse(
      count: map['count'] as int,
      items:
          map['items']?.map((item) => VKGroupsGroupXtrInvitedBy.fromMap(item)),
      profiles: map['profiles']?.map((item) => VKUsersUserMin.fromMap(item)),
      groups: map['groups']?.map((item) => VKGroupsGroupFull.fromMap(item)),
    );
  }
}
