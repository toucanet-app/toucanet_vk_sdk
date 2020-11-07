import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKFriendsGetFieldsResponse {
  /// Total friends number.
  final int count;

  final List<VKFriendsUserXtrLists> items;

  const VKFriendsGetFieldsResponse({
    @required this.count,
    @required this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFriendsGetFieldsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKFriendsGetFieldsResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map((item) => VKFriendsUserXtrLists.fromMap(item))
          ?.toList(),
    );
  }
}
