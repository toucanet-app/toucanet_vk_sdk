import 'account_push_conversations_item.dart';

class AccountPushConversations {
  /// Items count.
  final int count;

  final List<AccountPushConversationsItem> items;

  const AccountPushConversations({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AccountPushConversations.fromMap(Map<String, dynamic> map) {
    return AccountPushConversations(
      count: map['count'] as int,
      items: map['items']
          ?.map((item) => AccountPushConversationsItem.fromMap(item)),
    );
  }
}
