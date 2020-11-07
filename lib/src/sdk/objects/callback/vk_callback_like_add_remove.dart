import 'package:meta/meta.dart';

class VKCallbackLikeAddRemove {
  final int likerId;

  final String objectType;

  final int objectOwnerId;

  final int objectId;

  final int postId;

  final int threadReplyId;

  const VKCallbackLikeAddRemove({
    @required this.likerId,
    @required this.objectType,
    @required this.objectOwnerId,
    @required this.objectId,
    @required this.postId,
    this.threadReplyId,
  })  : assert(postId >= 0),
        assert(threadReplyId == null || threadReplyId >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'liker_id': likerId,
      'object_type': objectType,
      'object_owner_id': objectOwnerId,
      'object_id': objectId,
      'post_id': postId,
      'thread_reply_id': threadReplyId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKCallbackLikeAddRemove.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKCallbackLikeAddRemove(
      likerId: map['liker_id'] as int,
      objectType: map['object_type'] as String,
      objectOwnerId: map['object_owner_id'] as int,
      objectId: map['object_id'] as int,
      postId: map['post_id'] as int,
      threadReplyId: map['thread_reply_id'] as int,
    );
  }
}
