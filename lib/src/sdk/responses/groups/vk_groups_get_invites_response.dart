import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKGroupsGetInvitesResponse {
  /// Total communities number.
  final int count;

  final List<VKGroupsGroupXtrInvitedBy> items;

  const VKGroupsGetInvitesResponse({
    @required this.count,
    @required this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsGetInvitesResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsGetInvitesResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKGroupsGroupXtrInvitedBy>(
            (item) => VKGroupsGroupXtrInvitedBy.fromMap(item),
          )
          ?.toList(),
    );
  }
}
