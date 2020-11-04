import 'friends_requests_mutual.dart';

class FriendsRequestsXtrMessage {
  /// ID of the user by whom friend has been suggested.
  final String from;

  /// Message sent with a request.
  final String message;

  final FriendsRequestsMutual mutual;

  /// User ID.
  final int userId;

  const FriendsRequestsXtrMessage({
    this.from,
    this.message,
    this.mutual,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'message': message,
      'mutual': mutual?.toMap(),
      'user_id': userId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory FriendsRequestsXtrMessage.fromMap(Map<String, dynamic> map) {
    return FriendsRequestsXtrMessage(
      from: map['from'] as String,
      message: map['message'] as String,
      mutual: FriendsRequestsMutual.fromMap(map['mutual']),
      userId: map['user_id'] as int,
    );
  }
}
