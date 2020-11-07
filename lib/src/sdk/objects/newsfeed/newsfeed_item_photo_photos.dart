import 'newsfeed_newsfeed_photo.dart';

class VKNewsfeedItemPhotoPhotos {
  /// Photos number.
  final int count;

  final List<VKNewsfeedNewsfeedPhoto> items;

  const VKNewsfeedItemPhotoPhotos({
    this.count,
    this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedItemPhotoPhotos.fromMap(Map<String, dynamic> map) {
    return VKNewsfeedItemPhotoPhotos(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKNewsfeedNewsfeedPhoto.fromMap(item)),
    );
  }
}
