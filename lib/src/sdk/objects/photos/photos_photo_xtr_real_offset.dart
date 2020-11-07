import 'package:meta/meta.dart';

import '../base/base_property_exists.dart';
import 'photos_photo_sizes.dart';

class VKPhotosPhotoXtrRealOffset {
  /// Access key for the photo.
  final String accessKey;

  /// Album ID.
  final int albumId;

  /// Date when uploaded.
  final int date;

  /// Original photo height.
  final int height;

  /// Returns if the photo is hidden above the wall.
  final VKBasePropertyExists hidden;

  /// Photo ID.
  final int id;

  /// Latitude.
  final double lat;

  /// Longitude.
  final double long;

  /// Photo owner's ID.
  final int ownerId;

  /// URL of image with 1280 px width.
  final String photo1280;

  /// URL of image with 130 px width.
  final String photo130;

  /// URL of image with 2560 px width.
  final String photo2560;

  /// URL of image with 604 px width.
  final String photo604;

  /// URL of image with 75 px width.
  final String photo75;

  /// URL of image with 807 px width.
  final String photo807;

  /// Post ID.
  final int postId;

  /// Real position of the photo.
  final int realOffset;

  final List<VKPhotosPhotoSizes> sizes;

  /// Photo caption.
  final String text;

  /// ID of the user who have uploaded the photo.
  final int userId;

  /// Original photo width.
  final int width;

  const VKPhotosPhotoXtrRealOffset({
    this.accessKey,
    @required this.albumId,
    @required this.date,
    this.height,
    this.hidden,
    @required this.id,
    this.lat,
    this.long,
    @required this.ownerId,
    this.photo1280,
    this.photo130,
    this.photo2560,
    this.photo604,
    this.photo75,
    this.photo807,
    this.postId,
    this.realOffset,
    this.sizes,
    this.text,
    this.userId,
    this.width,
  })  : assert(date >= 0),
        assert(height >= 0),
        assert(id >= 0),
        assert(postId >= 1),
        assert(userId >= 1),
        assert(width >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access_key': accessKey,
      'album_id': albumId,
      'date': date,
      'height': height,
      'hidden': hidden?.value,
      'id': id,
      'lat': lat,
      'long': long,
      'owner_id': ownerId,
      'photo_1280': photo1280,
      'photo_130': photo130,
      'photo_2560': photo2560,
      'photo_604': photo604,
      'photo_75': photo75,
      'photo_807': photo807,
      'post_id': postId,
      'real_offset': realOffset,
      'sizes': sizes?.map((item) => item?.toMap()),
      'text': text,
      'user_id': userId,
      'width': width,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosPhotoXtrRealOffset.fromMap(Map<String, dynamic> map) {
    return VKPhotosPhotoXtrRealOffset(
      accessKey: map['access_key'] as String,
      albumId: map['album_id'] as int,
      date: map['date'] as int,
      height: map['height'] as int,
      hidden: VKBasePropertyExists(map['hidden']),
      id: map['id'] as int,
      lat: map['lat'] as double,
      long: map['long'] as double,
      ownerId: map['owner_id'] as int,
      photo1280: map['photo_1280'] as String,
      photo130: map['photo_130'] as String,
      photo2560: map['photo_2560'] as String,
      photo604: map['photo_604'] as String,
      photo75: map['photo_75'] as String,
      photo807: map['photo_807'] as String,
      postId: map['post_id'] as int,
      realOffset: map['real_offset'] as int,
      sizes: map['sizes']?.map((item) => VKPhotosPhotoSizes.fromMap(item)),
      text: map['text'] as String,
      userId: map['user_id'] as int,
      width: map['width'] as int,
    );
  }
}
