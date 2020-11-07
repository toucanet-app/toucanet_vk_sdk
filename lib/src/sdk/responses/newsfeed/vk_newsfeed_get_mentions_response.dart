import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKNewsfeedGetMentionsResponse {
  /// Total number.
  final int count;

  final List<VKWallWallpostToId> items;

  const VKNewsfeedGetMentionsResponse({
    @required this.count,
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedGetMentionsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNewsfeedGetMentionsResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map((item) => VKWallWallpostToId.fromMap(item))
          ?.toList(),
    );
  }
}
