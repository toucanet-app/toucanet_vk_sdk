import 'video_video.dart';

class NewsfeedItemVideoVideo {
  /// Tags number.
  final int count;

  final List<VideoVideo> items;

  const NewsfeedItemVideoVideo({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory NewsfeedItemVideoVideo.fromMap(Map<String, dynamic> map) {
    return NewsfeedItemVideoVideo(
      count: map['count'] as int,
      items: map['items']?.map((item) => VideoVideo.fromMap(item)),
    );
  }
}
