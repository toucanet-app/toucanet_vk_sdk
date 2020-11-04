import 'package:meta/meta.dart';

class CallbackWallCommentDelete {
  final int ownerId;

  final int id;

  final int userId;

  final int postId;

  const CallbackWallCommentDelete({
    @required this.ownerId,
    @required this.id,
    @required this.userId,
    @required this.postId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'owner_id': ownerId,
      'id': id,
      'user_id': userId,
      'post_id': postId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory CallbackWallCommentDelete.fromMap(Map<String, dynamic> map) {
    return CallbackWallCommentDelete(
      ownerId: map['owner_id'] as int,
      id: map['id'] as int,
      userId: map['user_id'] as int,
      postId: map['post_id'] as int,
    );
  }
}
