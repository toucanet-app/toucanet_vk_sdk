class VKFriendsGetRequestsResponse {
  /// Total requests number.
  final int count;

  /// The list of User ID.
  final List<int> items;

  /// Total unread requests number.
  final int countUnread;

  const VKFriendsGetRequestsResponse({
    this.count,
    this.items,
    this.countUnread,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items,
      'count_unread': countUnread,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFriendsGetRequestsResponse.fromMap(Map<String, dynamic> map) {
    return VKFriendsGetRequestsResponse(
      count: map['count'] as int,
      items: map['items'] as List<int>,
      countUnread: map['count_unread'] as int,
    );
  }
}
