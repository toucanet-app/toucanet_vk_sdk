import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKGroupsGetRequestsFieldsResponse {
  /// Total communities number.
  final int count;

  final List<VKUsersUserFull> items;

  const VKGroupsGetRequestsFieldsResponse({
    @required this.count,
    @required this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsGetRequestsFieldsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsGetRequestsFieldsResponse(
      count: map['count'] as int,
      items:
          map['items']?.map((item) => VKUsersUserFull.fromMap(item))?.toList(),
    );
  }
}
