import 'newsfeed_newsfeed_item_type.dart';
import 'newsfeed_item_photo_photos.dart';
import 'package:meta/meta.dart';

class NewsfeedItemPhoto {
  /// Index of current carousel element.
  final int carouselOffset;

  final NewsfeedNewsfeedItemType type;

  /// Item source ID.
  final int sourceId;

  /// Date when item has been added in Unixtime.
  final int date;

  final NewsfeedItemPhotoPhotos photos;

  /// Post ID.
  final int postId;

  const NewsfeedItemPhoto({
    this.carouselOffset,
    @required this.type,
    @required this.sourceId,
    @required this.date,
    this.photos,
    this.postId,
  });

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

  factory NewsfeedItemPhoto.fromMap(Map<String, dynamic> map) {
    return NewsfeedItemPhoto(
      carouselOffset: map['carousel_offset'] as int,
      type: NewsfeedNewsfeedItemType(map['type']),
      sourceId: map['source_id'] as int,
      date: map['date'] as int,
      photos: NewsfeedItemPhotoPhotos.fromMap(map['photos']),
      postId: map['post_id'] as int,
    );
  }
}
