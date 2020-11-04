import 'photos_photo.dart';
import 'base_crop_photo_crop.dart';
import 'base_crop_photo_rect.dart';
import 'package:meta/meta.dart';

class BaseCropPhoto {
  final PhotosPhoto photo;

  final BaseCropPhotoCrop crop;

  final BaseCropPhotoRect rect;

  const BaseCropPhoto({
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

  factory BaseCropPhoto.fromMap(Map<String, dynamic> map) {
    return BaseCropPhoto(
      photo: PhotosPhoto.fromMap(map['photo']),
      crop: BaseCropPhotoCrop.fromMap(map['crop']),
      rect: BaseCropPhotoRect.fromMap(map['rect']),
    );
  }
}
