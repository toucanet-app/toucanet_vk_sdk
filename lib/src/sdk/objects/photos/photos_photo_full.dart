import 'package:meta/meta.dart';

import '../base/base_bool_int.dart';
import '../base/base_likes.dart';
import '../base/base_object_count.dart';
import 'photos_image.dart';

class VKPhotosPhotoFull {
  /// Access key for the photo.
  final String accessKey;

  /// Album ID.
  final int albumId;

  /// Information whether current user can comment the photo.
  final VKBaseBoolInt canComment;

  final VKBaseObjectCount comments;

  /// Date when uploaded.
  final int date;

  /// Original photo height.
  final int height;

  /// Photo ID.
  final int id;

  final List<VKPhotosImage> images;

  /// Latitude.
  final double lat;

  final VKBaseLikes likes;

  /// Longitude.
  final double long;

  /// Photo owner's ID.
  final int ownerId;

  /// Post ID.
  final int postId;

  final VKBaseObjectCount reposts;

  final VKBaseObjectCount tags;

  /// Photo caption.
  final String text;

  /// ID of the user who have uploaded the photo.
  final int userId;

  /// Original photo width.
  final int width;

  const VKPhotosPhotoFull({
    this.accessKey,
    @required this.albumId,
    this.canComment,
    this.comments,
    @required this.date,
    this.height,
    @required this.id,
    this.images,
    this.lat,
    this.likes,
    this.long,
    @required this.ownerId,
    this.postId,
    this.reposts,
    this.tags,
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
      'can_comment': canComment?.value,
      'comments': comments?.toMap(),
      'date': date,
      'height': height,
      'id': id,
      'images': images?.map((item) => item?.toMap()),
      'lat': lat,
      'likes': likes?.toMap(),
      'long': long,
      'owner_id': ownerId,
      'post_id': postId,
      'reposts': reposts?.toMap(),
      'tags': tags?.toMap(),
      'text': text,
      'user_id': userId,
      'width': width,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosPhotoFull.fromMap(Map<String, dynamic> map) {
    return VKPhotosPhotoFull(
      accessKey: map['access_key'] as String,
      albumId: map['album_id'] as int,
      canComment: VKBaseBoolInt(map['can_comment']),
      comments: VKBaseObjectCount.fromMap(map['comments']),
      date: map['date'] as int,
      height: map['height'] as int,
      id: map['id'] as int,
      images: map['images']?.map((item) => VKPhotosImage.fromMap(item)),
      lat: map['lat'] as double,
      likes: VKBaseLikes.fromMap(map['likes']),
      long: map['long'] as double,
      ownerId: map['owner_id'] as int,
      postId: map['post_id'] as int,
      reposts: VKBaseObjectCount.fromMap(map['reposts']),
      tags: VKBaseObjectCount.fromMap(map['tags']),
      text: map['text'] as String,
      userId: map['user_id'] as int,
      width: map['width'] as int,
    );
  }
}
