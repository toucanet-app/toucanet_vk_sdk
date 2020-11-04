import 'package:meta/meta.dart';

class CallbackPhotoCommentDelete {
  final int id;

  final int ownerId;

  final int userId;

  final int photoId;

  const CallbackPhotoCommentDelete({
    @required this.id,
    @required this.ownerId,
    @required this.userId,
    @required this.photoId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'owner_id': ownerId,
      'user_id': userId,
      'photo_id': photoId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory CallbackPhotoCommentDelete.fromMap(Map<String, dynamic> map) {
    return CallbackPhotoCommentDelete(
      id: map['id'] as int,
      ownerId: map['owner_id'] as int,
      userId: map['user_id'] as int,
      photoId: map['photo_id'] as int,
    );
  }
}
