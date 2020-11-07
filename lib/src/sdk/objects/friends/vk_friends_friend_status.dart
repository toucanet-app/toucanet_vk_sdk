import 'package:meta/meta.dart';

import 'vk_friends_friend_status_status.dart';

class VKFriendsFriendStatus {
  final VKFriendsFriendStatusStatus friendStatus;

  /// MD5 hash for the result validation.
  final String sign;

  /// User ID.
  final int userId;

  const VKFriendsFriendStatus({
    @required this.friendStatus,
    this.sign,
    @required this.userId,
  }) : assert(userId >= 1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'friend_status': friendStatus?.value,
      'sign': sign,
      'user_id': userId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFriendsFriendStatus.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKFriendsFriendStatus(
      friendStatus: VKFriendsFriendStatusStatus(map['friend_status']),
      sign: map['sign'] as String,
      userId: map['user_id'] as int,
    );
  }
}
