import 'base_bool_int.dart';
import 'photos_photo_sizes.dart';
import 'package:meta/meta.dart';

class PhotosPhotoAlbumFull {
  /// Information whether current user can upload photo to the album.
  final BaseBoolInt canUpload;

  /// Information whether album comments are disabled.
  final BaseBoolInt commentsDisabled;

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

  final List<PhotosPhotoSizes> sizes;

  /// Thumb photo ID.
  final int thumbId;

  /// Information whether the album thumb is last photo.
  final BaseBoolInt thumbIsLast;

  /// URL of the thumb image.
  final String thumbSrc;

  /// Photo album title.
  final String title;

  /// Date when the album has been updated last time in Unixtime.
  final int updated;

  /// Information whether only community administrators can upload photos.
  final BaseBoolInt uploadByAdminsOnly;

  const PhotosPhotoAlbumFull({
    this.canUpload,
    this.commentsDisabled,
    @required this.created,
    this.description,
    @required this.id,
    @required this.ownerId,
    @required this.size,
    this.sizes,
    this.thumbId,
    this.thumbIsLast,
    this.thumbSrc,
    @required this.title,
    @required this.updated,
    this.uploadByAdminsOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'can_upload': canUpload?.value,
      'comments_disabled': commentsDisabled?.value,
      'created': created,
      'description': description,
      'id': id,
      'owner_id': ownerId,
      'size': size,
      'sizes': sizes?.map((item) => item?.toMap()),
      'thumb_id': thumbId,
      'thumb_is_last': thumbIsLast?.value,
      'thumb_src': thumbSrc,
      'title': title,
      'updated': updated,
      'upload_by_admins_only': uploadByAdminsOnly?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory PhotosPhotoAlbumFull.fromMap(Map<String, dynamic> map) {
    return PhotosPhotoAlbumFull(
      canUpload: BaseBoolInt(map['can_upload']),
      commentsDisabled: BaseBoolInt(map['comments_disabled']),
      created: map['created'] as int,
      description: map['description'] as String,
      id: map['id'] as int,
      ownerId: map['owner_id'] as int,
      size: map['size'] as int,
      sizes: map['sizes']?.map((item) => PhotosPhotoSizes.fromMap(item)),
      thumbId: map['thumb_id'] as int,
      thumbIsLast: BaseBoolInt(map['thumb_is_last']),
      thumbSrc: map['thumb_src'] as String,
      title: map['title'] as String,
      updated: map['updated'] as int,
      uploadByAdminsOnly: BaseBoolInt(map['upload_by_admins_only']),
    );
  }
}
