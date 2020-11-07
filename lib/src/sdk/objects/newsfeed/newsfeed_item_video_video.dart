import '../video/video_video.dart';

class VKNewsfeedItemVideoVideo {
  /// Tags number.
  final int count;

  final List<VKVideoVideo> items;

  const VKNewsfeedItemVideoVideo({
    this.count,
    this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedItemVideoVideo.fromMap(Map<String, dynamic> map) {
    return VKNewsfeedItemVideoVideo(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKVideoVideo.fromMap(item)),
    );
  }
}
