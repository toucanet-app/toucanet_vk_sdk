import 'photos_photo.dart';
import 'package:meta/meta.dart';

class CallbackGroupChangePhoto {
  final int userId;

  final PhotosPhoto photo;

  const CallbackGroupChangePhoto({
    @required this.userId,
    @required this.photo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': userId,
      'photo': photo?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory CallbackGroupChangePhoto.fromMap(Map<String, dynamic> map) {
    return CallbackGroupChangePhoto(
      userId: map['user_id'] as int,
      photo: PhotosPhoto.fromMap(map['photo']),
    );
  }
}
