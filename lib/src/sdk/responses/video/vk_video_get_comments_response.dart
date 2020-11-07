import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKVideoGetCommentsResponse {
  /// Total number.
  final int count;

  final List<VKWallWallComment> items;

  const VKVideoGetCommentsResponse({
    @required this.count,
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKVideoGetCommentsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKVideoGetCommentsResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map((item) => VKWallWallComment.fromMap(item))
          ?.toList(),
    );
  }
}
