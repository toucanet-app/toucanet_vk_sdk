import 'base_bool_int.dart';
import 'base_object_count.dart';
import 'photos_image.dart';
import 'base_likes.dart';
import 'package:meta/meta.dart';

class PhotosPhotoFull {
  /// Access key for the photo.
  final String accessKey;

  /// Album ID.
  final int albumId;

  /// Information whether current user can comment the photo.
  final BaseBoolInt canComment;

  final BaseObjectCount comments;

  /// Date when uploaded.
  final int date;

  /// Original photo height.
  final int height;

  /// Photo ID.
  final int id;

  final List<PhotosImage> images;

  /// Latitude.
  final double lat;

  final BaseLikes likes;

  /// Longitude.
  final double long;

  /// Photo owner's ID.
  final int ownerId;

  /// Post ID.
  final int postId;

  final BaseObjectCount reposts;

  final BaseObjectCount tags;

  /// Photo caption.
  final String text;

  /// ID of the user who have uploaded the photo.
  final int userId;

  /// Original photo width.
  final int width;

  const PhotosPhotoFull({
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
  });

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

  factory PhotosPhotoFull.fromMap(Map<String, dynamic> map) {
    return PhotosPhotoFull(
      accessKey: map['access_key'] as String,
      albumId: map['album_id'] as int,
      canComment: BaseBoolInt(map['can_comment']),
      comments: BaseObjectCount.fromMap(map['comments']),
      date: map['date'] as int,
      height: map['height'] as int,
      id: map['id'] as int,
      images: map['images']?.map((item) => PhotosImage.fromMap(item)),
      lat: map['lat'] as double,
      likes: BaseLikes.fromMap(map['likes']),
      long: map['long'] as double,
      ownerId: map['owner_id'] as int,
      postId: map['post_id'] as int,
      reposts: BaseObjectCount.fromMap(map['reposts']),
      tags: BaseObjectCount.fromMap(map['tags']),
      text: map['text'] as String,
      userId: map['user_id'] as int,
      width: map['width'] as int,
    );
  }
}
