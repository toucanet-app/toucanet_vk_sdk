import 'package:meta/meta.dart';

import '../photos/vk_photos_photo.dart';

class VKMarketMarketAlbum {
  /// Items number.
  final int count;

  /// Market album ID.
  final int id;

  /// Market album owner's ID.
  final int ownerId;

  final VKPhotosPhoto photo;

  /// Market album title.
  final String title;

  /// Date when album has been updated last time in Unixtime.
  final int updatedTime;

  const VKMarketMarketAlbum({
    @required this.count,
    @required this.id,
    @required this.ownerId,
    this.photo,
    @required this.title,
    @required this.updatedTime,
  })  : assert(count >= 0),
        assert(id >= 1),
        assert(updatedTime >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'id': id,
      'owner_id': ownerId,
      'photo': photo?.toMap(),
      'title': title,
      'updated_time': updatedTime,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMarketMarketAlbum.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMarketMarketAlbum(
      count: map['count'] as int,
      id: map['id'] as int,
      ownerId: map['owner_id'] as int,
      photo: VKPhotosPhoto.fromMap(map['photo']),
      title: map['title'] as String,
      updatedTime: map['updated_time'] as int,
    );
  }
}
