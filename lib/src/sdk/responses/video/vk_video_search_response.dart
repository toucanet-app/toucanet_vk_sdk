import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKVideoSearchResponse {
  /// Total number.
  final int count;

  final List<VKVideoVideo> items;

  const VKVideoSearchResponse({
    @required this.count,
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKVideoSearchResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKVideoSearchResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKVideoVideo.fromMap(item))?.toList(),
    );
  }
}
