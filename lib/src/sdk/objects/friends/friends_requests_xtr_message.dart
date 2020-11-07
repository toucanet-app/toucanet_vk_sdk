import 'friends_requests_mutual.dart';

class VKFriendsRequestsXtrMessage {
  /// ID of the user by whom friend has been suggested.
  final String from;

  /// Message sent with a request.
  final String message;

  final VKFriendsRequestsMutual mutual;

  /// User ID.
  final int userId;

  const VKFriendsRequestsXtrMessage({
    this.from,
    this.message,
    this.mutual,
    this.userId,
  }) : assert(userId >= 1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'message': message,
      'mutual': mutual?.toMap(),
      'user_id': userId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFriendsRequestsXtrMessage.fromMap(Map<String, dynamic> map) {
    return VKFriendsRequestsXtrMessage(
      from: map['from'] as String,
      message: map['message'] as String,
      mutual: VKFriendsRequestsMutual.fromMap(map['mutual']),
      userId: map['user_id'] as int,
    );
  }
}
