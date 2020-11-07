import 'messages_message.dart';

class VKMessagesMessagesArray {
  final int count;

  final List<VKMessagesMessage> items;

  const VKMessagesMessagesArray({
    this.count,
    this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesMessagesArray.fromMap(Map<String, dynamic> map) {
    return VKMessagesMessagesArray(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKMessagesMessage.fromMap(item)),
    );
  }
}
