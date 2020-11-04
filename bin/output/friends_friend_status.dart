import 'friends_friend_status_status.dart';
import 'package:meta/meta.dart';

class FriendsFriendStatus {
  final FriendsFriendStatusStatus friendStatus;

  /// MD5 hash for the result validation.
  final String sign;

  /// User ID.
  final int userId;

  const FriendsFriendStatus({
    @required this.friendStatus,
    this.sign,
    @required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'friend_status': friendStatus?.value,
      'sign': sign,
      'user_id': userId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory FriendsFriendStatus.fromMap(Map<String, dynamic> map) {
    return FriendsFriendStatus(
      friendStatus: FriendsFriendStatusStatus(map['friend_status']),
      sign: map['sign'] as String,
      userId: map['user_id'] as int,
    );
  }
}
