import 'package:meta/meta.dart';

class VKFriendsDeleteResponse {
  final int success;

  /// Returns 1 if friend has been deleted.
  final int friendDeleted;

  /// Returns 1 if out request has been canceled.
  final int outRequestDeleted;

  /// Returns 1 if incoming request has been declined.
  final int inRequestDeleted;

  /// Returns 1 if suggestion has been declined.
  final int suggestionDeleted;

  const VKFriendsDeleteResponse({
    @required this.success,
    this.friendDeleted,
    this.outRequestDeleted,
    this.inRequestDeleted,
    this.suggestionDeleted,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'success': success,
      'friend_deleted': friendDeleted,
      'out_request_deleted': outRequestDeleted,
      'in_request_deleted': inRequestDeleted,
      'suggestion_deleted': suggestionDeleted,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFriendsDeleteResponse.fromMap(Map<String, dynamic> map) {
    return VKFriendsDeleteResponse(
      success: map['success'] as int,
      friendDeleted: map['friend_deleted'] as int,
      outRequestDeleted: map['out_request_deleted'] as int,
      inRequestDeleted: map['in_request_deleted'] as int,
      suggestionDeleted: map['suggestion_deleted'] as int,
    );
  }
}
