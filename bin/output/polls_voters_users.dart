class PollsVotersUsers {
  /// Votes number.
  final int count;

  /// The list of User ID.
  final List<int> items;

  const PollsVotersUsers({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory PollsVotersUsers.fromMap(Map<String, dynamic> map) {
    return PollsVotersUsers(
      count: map['count'] as int,
      items: map['items'] as List<int>,
    );
  }
}
