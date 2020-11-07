import 'package:meta/meta.dart';

import '../photos/vk_photos_photo.dart';

class VKCallbackGroupChangePhoto {
  final int userId;

  final VKPhotosPhoto photo;

  const VKCallbackGroupChangePhoto({
    @required this.userId,
    @required this.photo,
  }) : assert(userId >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': userId,
      'photo': photo?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKCallbackGroupChangePhoto.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKCallbackGroupChangePhoto(
      userId: map['user_id'] as int,
      photo: VKPhotosPhoto.fromMap(map['photo']),
    );
  }
}
