import 'friends_requests_mutual.dart';

class FriendsRequests {
  /// ID of the user by whom friend has been suggested.
  final String from;

  final FriendsRequestsMutual mutual;

  /// User ID.
  final int userId;

  const FriendsRequests({
    this.from,
    this.mutual,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'mutual': mutual?.toMap(),
      'user_id': userId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory FriendsRequests.fromMap(Map<String, dynamic> map) {
    return FriendsRequests(
      from: map['from'] as String,
      mutual: FriendsRequestsMutual.fromMap(map['mutual']),
      userId: map['user_id'] as int,
    );
  }
}
