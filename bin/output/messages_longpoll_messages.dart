import 'messages_message.dart';

class MessagesLongpollMessages {
  /// Total number.
  final int count;

  final List<MessagesMessage> items;

  const MessagesLongpollMessages({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory MessagesLongpollMessages.fromMap(Map<String, dynamic> map) {
    return MessagesLongpollMessages(
      count: map['count'] as int,
      items: map['items']?.map((item) => MessagesMessage.fromMap(item)),
    );
  }
}
