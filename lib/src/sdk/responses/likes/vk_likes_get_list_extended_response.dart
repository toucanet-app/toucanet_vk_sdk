import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKLikesGetListExtendedResponse {
  /// Total number.
  final int count;

  final List<VKUsersUserMin> items;

  const VKLikesGetListExtendedResponse({
    @required this.count,
    @required this.items,
  });

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

  factory VKLikesGetListExtendedResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKLikesGetListExtendedResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKUsersUserMin>(
            (item) => VKUsersUserMin.fromMap(item),
          )
          ?.toList(),
    );
  }
}
