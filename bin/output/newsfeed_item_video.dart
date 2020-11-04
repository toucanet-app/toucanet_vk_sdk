import 'newsfeed_newsfeed_item_type.dart';
import 'newsfeed_item_video_video.dart';
import 'package:meta/meta.dart';

class NewsfeedItemVideo {
  /// Index of current carousel element.
  final int carouselOffset;

  final NewsfeedNewsfeedItemType type;

  /// Item source ID.
  final int sourceId;

  /// Date when item has been added in Unixtime.
  final int date;

  final NewsfeedItemVideoVideo video;

  const NewsfeedItemVideo({
    this.carouselOffset,
    @required this.type,
    @required this.sourceId,
    @required this.date,
    this.video,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'carousel_offset': carouselOffset,
      'type': type?.value,
      'source_id': sourceId,
      'date': date,
      'video': video?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory NewsfeedItemVideo.fromMap(Map<String, dynamic> map) {
    return NewsfeedItemVideo(
      carouselOffset: map['carousel_offset'] as int,
      type: NewsfeedNewsfeedItemType(map['type']),
      sourceId: map['source_id'] as int,
      date: map['date'] as int,
      video: NewsfeedItemVideoVideo.fromMap(map['video']),
    );
  }
}
