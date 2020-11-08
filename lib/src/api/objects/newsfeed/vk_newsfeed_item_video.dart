import 'package:meta/meta.dart';

import 'vk_newsfeed_item_video_video.dart';
import 'vk_newsfeed_newsfeed_item_type.dart';

class VKNewsfeedItemVideo {
  /// Index of current carousel element.
  final int carouselOffset;

  final VKNewsfeedNewsfeedItemType type;

  /// Item source ID.
  final int sourceId;

  /// Date when item has been added in Unixtime.
  final int date;

  final VKNewsfeedItemVideoVideo video;

  const VKNewsfeedItemVideo({
    this.carouselOffset,
    @required this.type,
    @required this.sourceId,
    @required this.date,
    this.video,
  }) : assert(carouselOffset == null || carouselOffset >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'carousel_offset': carouselOffset,
      'type': type?.value,
      'source_id': sourceId,
      'date': date,
      'video': video?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedItemVideo.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNewsfeedItemVideo(
      carouselOffset: map['carousel_offset'] as int,
      type: VKNewsfeedNewsfeedItemType(map['type']),
      sourceId: map['source_id'] as int,
      date: map['date'] as int,
      video: VKNewsfeedItemVideoVideo.fromMap(map['video']),
    );
  }
}
