import 'video_video_image.dart';
import 'base_property_exists.dart';
import 'package:meta/meta.dart';

class VideoVideoAlbumFull {
  /// Total number of videos in album.
  final int count;

  /// Album ID.
  final int id;

  /// Album cover image in different sizes.
  final List<VideoVideoImage> image;

  /// Need blur album thumb or not.
  final BasePropertyExists imageBlur;

  /// Information whether album is system.
  final BasePropertyExists isSystem;

  /// Album owner's ID.
  final int ownerId;

  /// Album title.
  final String title;

  /// Date when the album has been updated last time in Unixtime.
  final int updatedTime;

  const VideoVideoAlbumFull({
    @required this.count,
    this.id,
    this.image,
    this.imageBlur,
    this.isSystem,
    @required this.ownerId,
    @required this.title,
    @required this.updatedTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'id': id,
      'image': image?.map((item) => item?.toMap()),
      'image_blur': imageBlur?.value,
      'is_system': isSystem?.value,
      'owner_id': ownerId,
      'title': title,
      'updated_time': updatedTime,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VideoVideoAlbumFull.fromMap(Map<String, dynamic> map) {
    return VideoVideoAlbumFull(
      count: map['count'] as int,
      id: map['id'] as int,
      image: map['image']?.map((item) => VideoVideoImage.fromMap(item)),
      imageBlur: BasePropertyExists(map['image_blur']),
      isSystem: BasePropertyExists(map['is_system']),
      ownerId: map['owner_id'] as int,
      title: map['title'] as String,
      updatedTime: map['updated_time'] as int,
    );
  }
}
