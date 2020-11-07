import 'package:meta/meta.dart';

import '../base/base_bool_int.dart';
import '../media/media_restriction.dart';
import 'photos_image.dart';
import 'photos_photo_sizes.dart';

class VKPhotosPhoto {
  /// Access key for the photo.
  final String accessKey;

  /// Album ID.
  final int albumId;

  /// Date when uploaded.
  final int date;

  /// Original photo height.
  final int height;

  /// Photo ID.
  final int id;

  final List<VKPhotosImage> images;

  /// Latitude.
  final double lat;

  /// Longitude.
  final double long;

  /// Photo owner's ID.
  final int ownerId;

  /// URL of image with 2560 px width.
  final String photo256;

  /// Information whether current user can comment the photo.
  final VKBaseBoolInt canComment;

  final String place;

  /// Post ID.
  final int postId;

  final List<VKPhotosPhotoSizes> sizes;

  /// Photo caption.
  final String text;

  /// ID of the user who have uploaded the photo.
  final int userId;

  /// Original photo width.
  final int width;

  /// Whether photo has attached tag links.
  final bool hasTags;

  final VKMediaRestriction restrictions;

  const VKPhotosPhoto({
    this.accessKey,
    @required this.albumId,
    @required this.date,
    this.height,
    @required this.id,
    this.images,
    this.lat,
    this.long,
    @required this.ownerId,
    this.photo256,
    this.canComment,
    this.place,
    this.postId,
    this.sizes,
    this.text,
    this.userId,
    this.width,
    @required this.hasTags,
    this.restrictions,
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
      'id': id,
      'images': images?.map((item) => item?.toMap()),
      'lat': lat,
      'long': long,
      'owner_id': ownerId,
      'photo_256': photo256,
      'can_comment': canComment?.value,
      'place': place,
      'post_id': postId,
      'sizes': sizes?.map((item) => item?.toMap()),
      'text': text,
      'user_id': userId,
      'width': width,
      'has_tags': hasTags,
      'restrictions': restrictions?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosPhoto.fromMap(Map<String, dynamic> map) {
    return VKPhotosPhoto(
      accessKey: map['access_key'] as String,
      albumId: map['album_id'] as int,
      date: map['date'] as int,
      height: map['height'] as int,
      id: map['id'] as int,
      images: map['images']?.map((item) => VKPhotosImage.fromMap(item)),
      lat: map['lat'] as double,
      long: map['long'] as double,
      ownerId: map['owner_id'] as int,
      photo256: map['photo_256'] as String,
      canComment: VKBaseBoolInt(map['can_comment']),
      place: map['place'] as String,
      postId: map['post_id'] as int,
      sizes: map['sizes']?.map((item) => VKPhotosPhotoSizes.fromMap(item)),
      text: map['text'] as String,
      userId: map['user_id'] as int,
      width: map['width'] as int,
      hasTags: map['has_tags'] as bool,
      restrictions: VKMediaRestriction.fromMap(map['restrictions']),
    );
  }
}
