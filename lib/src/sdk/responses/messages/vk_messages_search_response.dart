import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKMessagesSearchResponse {
  /// Total number.
  final int count;

  final List<VKMessagesMessage> items;

  const VKMessagesSearchResponse({
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

  factory VKMessagesSearchResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMessagesSearchResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKMessagesMessage>(
            (item) => VKMessagesMessage.fromMap(item),
          )
          ?.toList(),
    );
  }
}
