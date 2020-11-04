/// Friend status with the user.
class FriendsFriendStatusStatus {
  final int value;

  const FriendsFriendStatusStatus._(this.value);

  factory FriendsFriendStatusStatus(value) {
    if (!values.contains(value)) return null;

    return FriendsFriendStatusStatus._(value);
  }

  static const FriendsFriendStatusStatus notAFriend = FriendsFriendStatusStatus._(0);

  static const FriendsFriendStatusStatus outcomingRequest = FriendsFriendStatusStatus._(1);

  static const FriendsFriendStatusStatus incomingRequest = FriendsFriendStatusStatus._(2);

  static const FriendsFriendStatusStatus isFriend = FriendsFriendStatusStatus._(3);

  static List get values => const [0, 1, 2, 3];

  @override
  String toString() => '$value';
}
