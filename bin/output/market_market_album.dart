import 'photos_photo.dart';
import 'package:meta/meta.dart';

class MarketMarketAlbum {
  /// Items number.
  final int count;

  /// Market album ID.
  final int id;

  /// Market album owner's ID.
  final int ownerId;

  final PhotosPhoto photo;

  /// Market album title.
  final String title;

  /// Date when album has been updated last time in Unixtime.
  final int updatedTime;

  const MarketMarketAlbum({
    @required this.count,
    @required this.id,
    @required this.ownerId,
    this.photo,
    @required this.title,
    @required this.updatedTime,
  });

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

  factory MarketMarketAlbum.fromMap(Map<String, dynamic> map) {
    return MarketMarketAlbum(
      count: map['count'] as int,
      id: map['id'] as int,
      ownerId: map['owner_id'] as int,
      photo: PhotosPhoto.fromMap(map['photo']),
      title: map['title'] as String,
      updatedTime: map['updated_time'] as int,
    );
  }
}
