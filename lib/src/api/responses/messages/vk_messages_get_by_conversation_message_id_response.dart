import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKMessagesGetByConversationMessageIdResponse {
  /// Total number.
  final int count;

  final List<VKMessagesMessage> items;

  const VKMessagesGetByConversationMessageIdResponse({
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

  factory VKMessagesGetByConversationMessageIdResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMessagesGetByConversationMessageIdResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKMessagesMessage>(
            (item) => VKMessagesMessage.fromMap(item),
          )
          ?.toList(),
    );
  }
}
