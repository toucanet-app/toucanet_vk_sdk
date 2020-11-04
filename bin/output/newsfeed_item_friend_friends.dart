import 'base_user_id.dart';

class NewsfeedItemFriendFriends {
  /// Number of friends has been added.
  final int count;

  final List<BaseUserId> items;

  const NewsfeedItemFriendFriends({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory NewsfeedItemFriendFriends.fromMap(Map<String, dynamic> map) {
    return NewsfeedItemFriendFriends(
      count: map['count'] as int,
      items: map['items']?.map((item) => BaseUserId.fromMap(item)),
    );
  }
}
