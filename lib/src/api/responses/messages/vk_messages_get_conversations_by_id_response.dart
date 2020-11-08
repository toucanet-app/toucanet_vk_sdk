import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKMessagesGetConversationsByIdResponse {
  /// Total number.
  final int count;

  final List<VKMessagesConversation> items;

  const VKMessagesGetConversationsByIdResponse({
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

  factory VKMessagesGetConversationsByIdResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMessagesGetConversationsByIdResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKMessagesConversation>(
            (item) => VKMessagesConversation.fromMap(item),
          )
          ?.toList(),
    );
  }
}
