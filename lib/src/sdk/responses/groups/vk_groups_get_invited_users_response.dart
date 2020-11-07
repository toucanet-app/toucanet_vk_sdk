import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKGroupsGetInvitedUsersResponse {
  /// Total communities number.
  final int count;

  final List<VKUsersUserFull> items;

  const VKGroupsGetInvitedUsersResponse({
    @required this.count,
    @required this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsGetInvitedUsersResponse.fromMap(Map<String, dynamic> map) {
    return VKGroupsGetInvitedUsersResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKUsersUserFull.fromMap(item)),
    );
  }
}
