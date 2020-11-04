import 'newsfeed_newsfeed_item_type.dart';
import 'newsfeed_item_friend_friends.dart';
import 'package:meta/meta.dart';

class NewsfeedItemFriend {
  final NewsfeedNewsfeedItemType type;

  /// Item source ID.
  final int sourceId;

  /// Date when item has been added in Unixtime.
  final int date;

  final NewsfeedItemFriendFriends friends;

  const NewsfeedItemFriend({
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

  factory NewsfeedItemFriend.fromMap(Map<String, dynamic> map) {
    return NewsfeedItemFriend(
      type: NewsfeedNewsfeedItemType(map['type']),
      sourceId: map['source_id'] as int,
      date: map['date'] as int,
      friends: NewsfeedItemFriendFriends.fromMap(map['friends']),
    );
  }
}
