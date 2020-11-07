import 'package:meta/meta.dart';

import 'vk_newsfeed_item_friend_friends.dart';
import 'vk_newsfeed_newsfeed_item_type.dart';

class VKNewsfeedItemFriend {
  final VKNewsfeedNewsfeedItemType type;

  /// Item source ID.
  final int sourceId;

  /// Date when item has been added in Unixtime.
  final int date;

  final VKNewsfeedItemFriendFriends friends;

  const VKNewsfeedItemFriend({
    @required this.type,
    @required this.sourceId,
    @required this.date,
    this.friends,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type?.value,
      'source_id': sourceId,
      'date': date,
      'friends': friends?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedItemFriend.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNewsfeedItemFriend(
      type: VKNewsfeedNewsfeedItemType(map['type']),
      sourceId: map['source_id'] as int,
      date: map['date'] as int,
      friends: VKNewsfeedItemFriendFriends.fromMap(map['friends']),
    );
  }
}
