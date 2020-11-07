import 'vk_newsfeed_newsfeed_photo.dart';

class VKNewsfeedItemPhotoTagPhotoTags {
  /// Tags number.
  final int count;

  final List<VKNewsfeedNewsfeedPhoto> items;

  const VKNewsfeedItemPhotoTagPhotoTags({
    this.count,
    this.items,
  }) : assert(count == null || count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedItemPhotoTagPhotoTags.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNewsfeedItemPhotoTagPhotoTags(
      count: map['count'] as int,
      items: map['items']
          ?.map((item) => VKNewsfeedNewsfeedPhoto.fromMap(item))
          ?.toList(),
    );
  }
}
