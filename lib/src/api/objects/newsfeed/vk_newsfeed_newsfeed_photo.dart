import 'package:meta/meta.dart';

import '../base/vk_base_bool_int.dart';
import '../base/vk_base_likes.dart';
import '../base/vk_base_object_count.dart';
import '../media/vk_media_restriction.dart';
import '../photos/vk_photos_image.dart';
import '../photos/vk_photos_photo_sizes.dart';

class VKNewsfeedNewsfeedPhoto {
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

  final VKBaseLikes likes;

  final VKBaseObjectCount comments;

  /// Information whether current user can repost the photo.
  final VKBaseBoolInt canRepost;

  const VKNewsfeedNewsfeedPhoto({
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
    this.likes,
    this.comments,
    this.canRepost,
  })  : assert(date >= 0),
        assert(height == null || height >= 0),
        assert(id >= 0),
        assert(postId == null || postId >= 1),
        assert(userId == null || userId >= 1),
        assert(width == null || width >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access_key': accessKey,
      'album_id': albumId,
      'date': date,
      'height': height,
      'id': id,
      'images': images
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'lat': lat,
      'long': long,
      'owner_id': ownerId,
      'photo_256': photo256,
      'can_comment': canComment?.value,
      'place': place,
      'post_id': postId,
      'sizes': sizes
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'text': text,
      'user_id': userId,
      'width': width,
      'has_tags': hasTags,
      'restrictions': restrictions?.toMap(),
      'likes': likes?.toMap(),
      'comments': comments?.toMap(),
      'can_repost': canRepost?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedNewsfeedPhoto.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNewsfeedNewsfeedPhoto(
      accessKey: map['access_key'] as String,
      albumId: map['album_id'] as int,
      date: map['date'] as int,
      height: map['height'] as int,
      id: map['id'] as int,
      images: map['images']
          ?.map<VKPhotosImage>(
            (item) => VKPhotosImage.fromMap(item),
          )
          ?.toList(),
      lat: map['lat'] as double,
      long: map['long'] as double,
      ownerId: map['owner_id'] as int,
      photo256: map['photo_256'] as String,
      canComment: VKBaseBoolInt(map['can_comment']),
      place: map['place'] as String,
      postId: map['post_id'] as int,
      sizes: map['sizes']
          ?.map<VKPhotosPhotoSizes>(
            (item) => VKPhotosPhotoSizes.fromMap(item),
          )
          ?.toList(),
      text: map['text'] as String,
      userId: map['user_id'] as int,
      width: map['width'] as int,
      hasTags: map['has_tags'] as bool,
      restrictions: VKMediaRestriction.fromMap(map['restrictions']),
      likes: VKBaseLikes.fromMap(map['likes']),
      comments: VKBaseObjectCount.fromMap(map['comments']),
      canRepost: VKBaseBoolInt(map['can_repost']),
    );
  }
}
