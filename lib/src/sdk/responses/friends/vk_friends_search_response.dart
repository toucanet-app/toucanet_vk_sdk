import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKFriendsSearchResponse {
  /// Total number.
  final int count;

  final List<VKUsersUserFull> items;

  const VKFriendsSearchResponse({
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

  factory VKFriendsSearchResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKFriendsSearchResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKUsersUserFull>(
            (item) => VKUsersUserFull.fromMap(item),
          )
          ?.toList(),
    );
  }
}
