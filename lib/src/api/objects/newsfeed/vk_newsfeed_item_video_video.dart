import '../video/vk_video_video.dart';

class VKNewsfeedItemVideoVideo {
  /// Tags number.
  final int count;

  final List<VKVideoVideo> items;

  const VKNewsfeedItemVideoVideo({
    this.count,
    this.items,
  }) : assert(count == null || count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedItemVideoVideo.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNewsfeedItemVideoVideo(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKVideoVideo>(
            (item) => VKVideoVideo.fromMap(item),
          )
          ?.toList(),
    );
  }
}
