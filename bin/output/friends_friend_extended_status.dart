import 'friends_friend_status_status.dart';
import 'package:meta/meta.dart';

class FriendsFriendExtendedStatus {
  final FriendsFriendStatusStatus friendStatus;

  /// MD5 hash for the result validation.
  final String sign;

  /// User ID.
  final int userId;

  /// Is friend request from other user unread.
  final bool isRequestUnread;

  const FriendsFriendExtendedStatus({
    @required this.friendStatus,
    this.sign,
    @required this.userId,
    this.isRequestUnread,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'friend_status': friendStatus?.value,
      'sign': sign,
      'user_id': userId,
      'is_request_unread': isRequestUnread,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory FriendsFriendExtendedStatus.fromMap(Map<String, dynamic> map) {
    return FriendsFriendExtendedStatus(
      friendStatus: FriendsFriendStatusStatus(map['friend_status']),
      sign: map['sign'] as String,
      userId: map['user_id'] as int,
      isRequestUnread: map['is_request_unread'] as bool,
    );
  }
}
