import 'messages_message.dart';

class MessagesMessagesArray {
  final int count;

  final List<MessagesMessage> items;

  const MessagesMessagesArray({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory MessagesMessagesArray.fromMap(Map<String, dynamic> map) {
    return MessagesMessagesArray(
      count: map['count'] as int,
      items: map['items']?.map((item) => MessagesMessage.fromMap(item)),
    );
  }
}
