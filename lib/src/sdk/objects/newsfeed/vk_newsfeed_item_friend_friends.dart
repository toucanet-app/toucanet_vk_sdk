import '../base/vk_base_user_id.dart';

class VKNewsfeedItemFriendFriends {
  /// Number of friends has been added.
  final int count;

  final List<VKBaseUserId> items;

  const VKNewsfeedItemFriendFriends({
    this.count,
    this.items,
  }) : assert(count == null || count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedItemFriendFriends.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNewsfeedItemFriendFriends(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKBaseUserId.fromMap(item))?.toList(),
    );
  }
}
