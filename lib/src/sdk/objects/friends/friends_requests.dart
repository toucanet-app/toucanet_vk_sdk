import 'friends_requests_mutual.dart';

class VKFriendsRequests {
  /// ID of the user by whom friend has been suggested.
  final String from;

  final VKFriendsRequestsMutual mutual;

  /// User ID.
  final int userId;

  const VKFriendsRequests({
    this.from,
    this.mutual,
    this.userId,
  }) : assert(userId >= 1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'mutual': mutual?.toMap(),
      'user_id': userId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFriendsRequests.fromMap(Map<String, dynamic> map) {
    return VKFriendsRequests(
      from: map['from'] as String,
      mutual: VKFriendsRequestsMutual.fromMap(map['mutual']),
      userId: map['user_id'] as int,
    );
  }
}
