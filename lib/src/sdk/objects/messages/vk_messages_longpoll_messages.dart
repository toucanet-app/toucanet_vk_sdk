import 'vk_messages_message.dart';

class VKMessagesLongpollMessages {
  /// Total number.
  final int count;

  final List<VKMessagesMessage> items;

  const VKMessagesLongpollMessages({
    this.count,
    this.items,
  }) : assert(count == null || count >= 0);

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

  factory VKMessagesLongpollMessages.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMessagesLongpollMessages(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKMessagesMessage>(
            (item) => VKMessagesMessage.fromMap(item),
          )
          ?.toList(),
    );
  }
}
