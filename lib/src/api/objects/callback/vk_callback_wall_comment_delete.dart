import 'package:meta/meta.dart';

class VKCallbackWallCommentDelete {
  final int ownerId;

  final int id;

  final int userId;

  final int postId;

  const VKCallbackWallCommentDelete({
    @required this.ownerId,
    @required this.id,
    @required this.userId,
    @required this.postId,
  })  : assert(id >= 0),
        assert(userId >= 0),
        assert(postId >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'owner_id': ownerId,
      'id': id,
      'user_id': userId,
      'post_id': postId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKCallbackWallCommentDelete.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKCallbackWallCommentDelete(
      ownerId: map['owner_id'] as int,
      id: map['id'] as int,
      userId: map['user_id'] as int,
      postId: map['post_id'] as int,
    );
  }
}
