import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKPrettyCardsGetResponse {
  /// Total number.
  final int count;

  final List<VKPrettyCardsPrettyCard> items;

  const VKPrettyCardsGetResponse({
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

  factory VKPrettyCardsGetResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPrettyCardsGetResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKPrettyCardsPrettyCard>(
            (item) => VKPrettyCardsPrettyCard.fromMap(item),
          )
          ?.toList(),
    );
  }
}
