import 'photos_photo.dart';
import 'package:meta/meta.dart';

class PhotosPhotoAlbum {
  /// Date when the album has been created in Unixtime.
  final int created;

  /// Photo album description.
  final String description;

  /// Photo album ID.
  final int id;

  /// Album owner's ID.
  final int ownerId;

  /// Photos number.
  final int size;

  final PhotosPhoto thumb;

  /// Photo album title.
  final String title;

  /// Date when the album has been updated last time in Unixtime.
  final int updated;

  const PhotosPhotoAlbum({
    @required this.created,
    this.description,
    @required this.id,
    @required this.ownerId,
    @required this.size,
    this.thumb,
    @required this.title,
    @required this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'description': description,
      'id': id,
      'owner_id': ownerId,
      'size': size,
      'thumb': thumb?.toMap(),
      'title': title,
      'updated': updated,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory PhotosPhotoAlbum.fromMap(Map<String, dynamic> map) {
    return PhotosPhotoAlbum(
      created: map['created'] as int,
      description: map['description'] as String,
      id: map['id'] as int,
      ownerId: map['owner_id'] as int,
      size: map['size'] as int,
      thumb: PhotosPhoto.fromMap(map['thumb']),
      title: map['title'] as String,
      updated: map['updated'] as int,
    );
  }
}
