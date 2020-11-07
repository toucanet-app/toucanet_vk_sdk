import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKGroupsGetMembersFilterResponse {
  /// Total members number.
  final int count;

  final List<VKGroupsMemberRole> items;

  const VKGroupsGetMembersFilterResponse({
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

  factory VKGroupsGetMembersFilterResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsGetMembersFilterResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKGroupsMemberRole>(
            (item) => VKGroupsMemberRole.fromMap(item),
          )
          ?.toList(),
    );
  }
}
