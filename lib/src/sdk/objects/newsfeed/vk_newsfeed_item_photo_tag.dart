import 'package:meta/meta.dart';

import 'vk_newsfeed_item_photo_tag_photo_tags.dart';
import 'vk_newsfeed_newsfeed_item_type.dart';

class VKNewsfeedItemPhotoTag {
  /// Index of current carousel element.
  final int carouselOffset;

  final VKNewsfeedNewsfeedItemType type;

  /// Item source ID.
  final int sourceId;

  /// Date when item has been added in Unixtime.
  final int date;

  final VKNewsfeedItemPhotoTagPhotoTags photoTags;

  /// Post ID.
  final int postId;

  const VKNewsfeedItemPhotoTag({
    this.carouselOffset,
    @required this.type,
    @required this.sourceId,
    @required this.date,
    this.photoTags,
    this.postId,
  }) : assert(carouselOffset == null || carouselOffset >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'carousel_offset': carouselOffset,
      'type': type?.value,
      'source_id': sourceId,
      'date': date,
      'photo_tags': photoTags?.toMap(),
      'post_id': postId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedItemPhotoTag.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNewsfeedItemPhotoTag(
      carouselOffset: map['carousel_offset'] as int,
      type: VKNewsfeedNewsfeedItemType(map['type']),
      sourceId: map['source_id'] as int,
      date: map['date'] as int,
      photoTags: VKNewsfeedItemPhotoTagPhotoTags.fromMap(map['photo_tags']),
      postId: map['post_id'] as int,
    );
  }
}
