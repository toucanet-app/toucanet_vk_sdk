import 'messages_message.dart';

class VKMessagesLongpollMessages {
  /// Total number.
  final int count;

  final List<VKMessagesMessage> items;

  const VKMessagesLongpollMessages({
    this.count,
    this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesLongpollMessages.fromMap(Map<String, dynamic> map) {
    return VKMessagesLongpollMessages(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKMessagesMessage.fromMap(item)),
    );
  }
}
