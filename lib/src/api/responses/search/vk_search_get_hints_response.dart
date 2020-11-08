import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKSearchGetHintsResponse {
  final int count;

  final List<VKSearchHint> items;

  final List<String> suggestedQueries;

  const VKSearchGetHintsResponse({
    @required this.count,
    @required this.items,
    this.suggestedQueries,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'suggested_queries': suggestedQueries,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKSearchGetHintsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKSearchGetHintsResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKSearchHint>(
            (item) => VKSearchHint.fromMap(item),
          )
          ?.toList(),
      suggestedQueries: map['suggested_queries'] as List<String>,
    );
  }
}
