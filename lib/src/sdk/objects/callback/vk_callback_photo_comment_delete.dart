import 'package:meta/meta.dart';

class VKCallbackPhotoCommentDelete {
  final int id;

  final int ownerId;

  final int userId;

  final int photoId;

  const VKCallbackPhotoCommentDelete({
    @required this.id,
    @required this.ownerId,
    @required this.userId,
    @required this.photoId,
  })  : assert(id >= 0),
        assert(ownerId >= 0),
        assert(userId >= 0),
        assert(photoId >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'owner_id': ownerId,
      'user_id': userId,
      'photo_id': photoId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKCallbackPhotoCommentDelete.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKCallbackPhotoCommentDelete(
      id: map['id'] as int,
      ownerId: map['owner_id'] as int,
      userId: map['user_id'] as int,
      photoId: map['photo_id'] as int,
    );
  }
}
