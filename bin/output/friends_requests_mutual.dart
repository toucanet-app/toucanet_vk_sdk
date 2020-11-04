class FriendsRequestsMutual {
  /// Total mutual friends number.
  final int count;

  /// The list of User ID.
  final List<int> users;

  const FriendsRequestsMutual({
    this.count,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'users': users,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory FriendsRequestsMutual.fromMap(Map<String, dynamic> map) {
    return FriendsRequestsMutual(
      count: map['count'] as int,
      users: map['users'] as List<int>,
    );
  }
}
