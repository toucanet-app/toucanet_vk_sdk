import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKNewsfeedGetListsExtendedResponse {
  /// Total number.
  final int count;

  final List<VKNewsfeedListFull> items;

  const VKNewsfeedGetListsExtendedResponse({
    @required this.count,
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedGetListsExtendedResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNewsfeedGetListsExtendedResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map((item) => VKNewsfeedListFull.fromMap(item))
          ?.toList(),
    );
  }
}
