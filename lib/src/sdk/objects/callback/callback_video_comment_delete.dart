import 'package:meta/meta.dart';

class VKCallbackVideoCommentDelete {
  final int id;

  final int ownerId;

  final int userId;

  final int videoId;

  const VKCallbackVideoCommentDelete({
    @required this.id,
    @required this.ownerId,
    @required this.userId,
    @required this.videoId,
  })  : assert(id >= 0),
        assert(userId >= 0),
        assert(videoId >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'owner_id': ownerId,
      'user_id': userId,
      'video_id': videoId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKCallbackVideoCommentDelete.fromMap(Map<String, dynamic> map) {
    return VKCallbackVideoCommentDelete(
      id: map['id'] as int,
      ownerId: map['owner_id'] as int,
      userId: map['user_id'] as int,
      videoId: map['video_id'] as int,
    );
  }
}
