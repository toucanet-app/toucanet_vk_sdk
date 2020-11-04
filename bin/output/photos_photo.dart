import 'photos_image.dart';
import 'base_bool_int.dart';
import 'photos_photo_sizes.dart';
import 'media_restriction.dart';
import 'package:meta/meta.dart';

class PhotosPhoto {
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

  final List<PhotosImage> images;

  /// Latitude.
  final double lat;

  /// Longitude.
  final double long;

  /// Photo owner's ID.
  final int ownerId;

  /// URL of image with 2560 px width.
  final String photo256;

  /// Information whether current user can comment the photo.
  final BaseBoolInt canComment;

  final String place;

  /// Post ID.
  final int postId;

  final List<PhotosPhotoSizes> sizes;

  /// Photo caption.
  final String text;

  /// ID of the user who have uploaded the photo.
  final int userId;

  /// Original photo width.
  final int width;

  /// Whether photo has attached tag links.
  final bool hasTags;

  final MediaRestriction restrictions;

  const PhotosPhoto({
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
  });

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

  factory PhotosPhoto.fromMap(Map<String, dynamic> map) {
    return PhotosPhoto(
      accessKey: map['access_key'] as String,
      albumId: map['album_id'] as int,
      date: map['date'] as int,
      height: map['height'] as int,
      id: map['id'] as int,
      images: map['images']?.map((item) => PhotosImage.fromMap(item)),
      lat: map['lat'] as double,
      long: map['long'] as double,
      ownerId: map['owner_id'] as int,
      photo256: map['photo_256'] as String,
      canComment: BaseBoolInt(map['can_comment']),
      place: map['place'] as String,
      postId: map['post_id'] as int,
      sizes: map['sizes']?.map((item) => PhotosPhotoSizes.fromMap(item)),
      text: map['text'] as String,
      userId: map['user_id'] as int,
      width: map['width'] as int,
      hasTags: map['has_tags'] as bool,
      restrictions: MediaRestriction.fromMap(map['restrictions']),
    );
  }
}
