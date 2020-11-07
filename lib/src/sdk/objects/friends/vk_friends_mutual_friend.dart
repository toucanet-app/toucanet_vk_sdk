class VKFriendsMutualFriend {
  /// Total mutual friends number.
  final int commonCount;

  /// The list of User ID.
  final List<int> commonFriends;

  /// User ID.
  final int id;

  const VKFriendsMutualFriend({
    this.commonCount,
    this.commonFriends,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'common_count': commonCount,
      'common_friends': commonFriends,
      'id': id,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFriendsMutualFriend.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKFriendsMutualFriend(
      commonCount: map['common_count'] as int,
      commonFriends: map['common_friends'] as List<int>,
      id: map['id'] as int,
    );
  }
}
