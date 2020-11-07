class VKFriendsRequestsMutual {
  /// Total mutual friends number.
  final int count;

  /// The list of User ID.
  final List<int> users;

  const VKFriendsRequestsMutual({
    this.count,
    this.users,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'users': users,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFriendsRequestsMutual.fromMap(Map<String, dynamic> map) {
    return VKFriendsRequestsMutual(
      count: map['count'] as int,
      users: map['users'] as List<int>,
    );
  }
}
