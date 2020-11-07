import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKDocsSearchResponse {
  /// Total number.
  final int count;

  final List<VKDocsDoc> items;

  const VKDocsSearchResponse({
    @required this.count,
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDocsSearchResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKDocsSearchResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKDocsDoc.fromMap(item))?.toList(),
    );
  }
}
