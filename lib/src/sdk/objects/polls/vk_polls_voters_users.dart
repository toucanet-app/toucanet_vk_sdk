class VKPollsVotersUsers {
  /// Votes number.
  final int count;

  /// The list of User ID.
  final List<int> items;

  const VKPollsVotersUsers({
    this.count,
    this.items,
  }) : assert(count == null || count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPollsVotersUsers.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPollsVotersUsers(
      count: map['count'] as int,
      items: map['items'] as List<int>,
    );
  }
}
