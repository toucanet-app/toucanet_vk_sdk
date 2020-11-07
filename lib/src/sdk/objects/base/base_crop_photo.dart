import 'package:meta/meta.dart';

import '../photos/photos_photo.dart';
import 'base_crop_photo_crop.dart';
import 'base_crop_photo_rect.dart';

class VKBaseCropPhoto {
  final VKPhotosPhoto photo;

  final VKBaseCropPhotoCrop crop;

  final VKBaseCropPhotoRect rect;

  const VKBaseCropPhoto({
    @required this.photo,
    @required this.crop,
    @required this.rect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'photo': photo?.toMap(),
      'crop': crop?.toMap(),
      'rect': rect?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseCropPhoto.fromMap(Map<String, dynamic> map) {
    return VKBaseCropPhoto(
      photo: VKPhotosPhoto.fromMap(map['photo']),
      crop: VKBaseCropPhotoCrop.fromMap(map['crop']),
      rect: VKBaseCropPhotoRect.fromMap(map['rect']),
    );
  }
}
