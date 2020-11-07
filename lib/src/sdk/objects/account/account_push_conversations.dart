import 'account_push_conversations_item.dart';

class VKAccountPushConversations {
  /// Items count.
  final int count;

  final List<VKAccountPushConversationsItem> items;

  const VKAccountPushConversations({
    this.count,
    this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAccountPushConversations.fromMap(Map<String, dynamic> map) {
    return VKAccountPushConversations(
      count: map['count'] as int,
      items: map['items']
          ?.map((item) => VKAccountPushConversationsItem.fromMap(item)),
    );
  }
}
