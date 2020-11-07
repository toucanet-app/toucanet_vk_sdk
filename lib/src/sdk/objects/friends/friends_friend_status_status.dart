/// Friend status with the user.
class VKFriendsFriendStatusStatus {
  final int value;

  const VKFriendsFriendStatusStatus._(this.value);

  factory VKFriendsFriendStatusStatus(value) {
    if (!values.contains(value)) return null;
    return VKFriendsFriendStatusStatus._(value);
  }

  static const VKFriendsFriendStatusStatus incomingRequest =
      VKFriendsFriendStatusStatus._(2);

  static const VKFriendsFriendStatusStatus isFriend =
      VKFriendsFriendStatusStatus._(3);

  static const VKFriendsFriendStatusStatus notAFriend =
      VKFriendsFriendStatusStatus._(0);

  static const VKFriendsFriendStatusStatus outcomingRequest =
      VKFriendsFriendStatusStatus._(1);

  static List get values => const [0, 1, 2, 3];

  @override
  String toString() => '$value';
}
