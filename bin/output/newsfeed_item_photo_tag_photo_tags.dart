import 'newsfeed_newsfeed_photo.dart';

class NewsfeedItemPhotoTagPhotoTags {
  /// Tags number.
  final int count;

  final List<NewsfeedNewsfeedPhoto> items;

  const NewsfeedItemPhotoTagPhotoTags({
    this.count,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory NewsfeedItemPhotoTagPhotoTags.fromMap(Map<String, dynamic> map) {
    return NewsfeedItemPhotoTagPhotoTags(
      count: map['count'] as int,
      items: map['items']?.map((item) => NewsfeedNewsfeedPhoto.fromMap(item)),
    );
  }
}
