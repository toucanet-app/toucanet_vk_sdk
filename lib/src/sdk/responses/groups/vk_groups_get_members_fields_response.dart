import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKGroupsGetMembersFieldsResponse {
  /// Total members number.
  final int count;

  final List<VKGroupsUserXtrRole> items;

  const VKGroupsGetMembersFieldsResponse({
    @required this.count,
    @required this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsGetMembersFieldsResponse.fromMap(Map<String, dynamic> map) {
    return VKGroupsGetMembersFieldsResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKGroupsUserXtrRole.fromMap(item)),
    );
  }
}
