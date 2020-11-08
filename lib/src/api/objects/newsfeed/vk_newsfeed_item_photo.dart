import 'package:meta/meta.dart';

import 'vk_newsfeed_item_photo_photos.dart';
import 'vk_newsfeed_newsfeed_item_type.dart';

class VKNewsfeedItemPhoto {
  /// Index of current carousel element.
  final int carouselOffset;

  final VKNewsfeedNewsfeedItemType type;

  /// Item source ID.
  final int sourceId;

  /// Date when item has been added in Unixtime.
  final int date;

  final VKNewsfeedItemPhotoPhotos photos;

  /// Post ID.
  final int postId;

  const VKNewsfeedItemPhoto({
    this.carouselOffset,
    @required this.type,
    @required this.sourceId,
    @required this.date,
    this.photos,
    this.postId,
  }) : assert(carouselOffset == null || carouselOffset >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'carousel_offset': carouselOffset,
      'type': type?.value,
      'source_id': sourceId,
      'date': date,
      'photos': photos?.toMap(),
      'post_id': postId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedItemPhoto.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNewsfeedItemPhoto(
      carouselOffset: map['carousel_offset'] as int,
      type: VKNewsfeedNewsfeedItemType(map['type']),
      sourceId: map['source_id'] as int,
      date: map['date'] as int,
      photos: VKNewsfeedItemPhotoPhotos.fromMap(map['photos']),
      postId: map['post_id'] as int,
    );
  }
}
