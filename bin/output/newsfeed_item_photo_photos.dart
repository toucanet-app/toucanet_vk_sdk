import 'newsfeed_newsfeed_photo.dart';

class NewsfeedItemPhotoPhotos {
  /// Photos number.
  final int count;

  final List<NewsfeedNewsfeedPhoto> items;

  const NewsfeedItemPhotoPhotos({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory NewsfeedItemPhotoPhotos.fromMap(Map<String, dynamic> map) {
    return NewsfeedItemPhotoPhotos(
      count: map['count'] as int,
      items: map['items']?.map((item) => NewsfeedNewsfeedPhoto.fromMap(item)),
    );
  }
}
