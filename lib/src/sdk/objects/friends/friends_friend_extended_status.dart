import 'package:meta/meta.dart';

import 'friends_friend_status_status.dart';

class VKFriendsFriendExtendedStatus {
  final VKFriendsFriendStatusStatus friendStatus;

  /// MD5 hash for the result validation.
  final String sign;

  /// User ID.
  final int userId;

  /// Is friend request from other user unread.
  final bool isRequestUnread;

  const VKFriendsFriendExtendedStatus({
    @required this.friendStatus,
    this.sign,
    @required this.userId,
    this.isRequestUnread,
  }) : assert(userId >= 1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'friend_status': friendStatus?.value,
      'sign': sign,
      'user_id': userId,
      'is_request_unread': isRequestUnread,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFriendsFriendExtendedStatus.fromMap(Map<String, dynamic> map) {
    return VKFriendsFriendExtendedStatus(
      friendStatus: VKFriendsFriendStatusStatus(map['friend_status']),
      sign: map['sign'] as String,
      userId: map['user_id'] as int,
      isRequestUnread: map['is_request_unread'] as bool,
    );
  }
}
