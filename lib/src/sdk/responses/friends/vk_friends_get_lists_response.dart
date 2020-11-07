import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKFriendsGetListsResponse {
  /// Total number of friends lists.
  final int count;

  final List<VKFriendsFriendsList> items;

  const VKFriendsGetListsResponse({
    @required this.count,
    @required this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFriendsGetListsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKFriendsGetListsResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map((item) => VKFriendsFriendsList.fromMap(item))
          ?.toList(),
    );
  }
}
