import 'newsfeed_newsfeed_item_type.dart';
import 'newsfeed_item_photo_tag_photo_tags.dart';
import 'package:meta/meta.dart';

class NewsfeedItemPhotoTag {
  /// Index of current carousel element.
  final int carouselOffset;

  final NewsfeedNewsfeedItemType type;

  /// Item source ID.
  final int sourceId;

  /// Date when item has been added in Unixtime.
  final int date;

  final NewsfeedItemPhotoTagPhotoTags photoTags;

  /// Post ID.
  final int postId;

  const NewsfeedItemPhotoTag({
    this.carouselOffset,
    @required this.type,
    @required this.sourceId,
    @required this.date,
    this.photoTags,
    this.postId,
  });

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

  factory NewsfeedItemPhotoTag.fromMap(Map<String, dynamic> map) {
    return NewsfeedItemPhotoTag(
      carouselOffset: map['carousel_offset'] as int,
      type: NewsfeedNewsfeedItemType(map['type']),
      sourceId: map['source_id'] as int,
      date: map['date'] as int,
      photoTags: NewsfeedItemPhotoTagPhotoTags.fromMap(map['photo_tags']),
      postId: map['post_id'] as int,
    );
  }
}
