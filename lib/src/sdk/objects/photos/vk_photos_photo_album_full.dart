import 'package:meta/meta.dart';

import '../base/vk_base_bool_int.dart';
import 'vk_photos_photo_sizes.dart';

class VKPhotosPhotoAlbumFull {
  /// Information whether current user can upload photo to the album.
  final VKBaseBoolInt canUpload;

  /// Information whether album comments are disabled.
  final VKBaseBoolInt commentsDisabled;

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

  final List<VKPhotosPhotoSizes> sizes;

  /// Thumb photo ID.
  final int thumbId;

  /// Information whether the album thumb is last photo.
  final VKBaseBoolInt thumbIsLast;

  /// URL of the thumb image.
  final String thumbSrc;

  /// Photo album title.
  final String title;

  /// Date when the album has been updated last time in Unixtime.
  final int updated;

  /// Information whether only community administrators can upload photos.
  final VKBaseBoolInt uploadByAdminsOnly;

  const VKPhotosPhotoAlbumFull({
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
  })  : assert(created >= 0),
        assert(size >= 0),
        assert(thumbId == null || thumbId >= 0),
        assert(updated >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'can_upload': canUpload?.value,
      'comments_disabled': commentsDisabled?.value,
      'created': created,
      'description': description,
      'id': id,
      'owner_id': ownerId,
      'size': size,
      'sizes': sizes?.map((item) => item?.toMap())?.toList(),
      'thumb_id': thumbId,
      'thumb_is_last': thumbIsLast?.value,
      'thumb_src': thumbSrc,
      'title': title,
      'updated': updated,
      'upload_by_admins_only': uploadByAdminsOnly?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosPhotoAlbumFull.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPhotosPhotoAlbumFull(
      canUpload: VKBaseBoolInt(map['can_upload']),
      commentsDisabled: VKBaseBoolInt(map['comments_disabled']),
      created: map['created'] as int,
      description: map['description'] as String,
      id: map['id'] as int,
      ownerId: map['owner_id'] as int,
      size: map['size'] as int,
      sizes: map['sizes']
          ?.map((item) => VKPhotosPhotoSizes.fromMap(item))
          ?.toList(),
      thumbId: map['thumb_id'] as int,
      thumbIsLast: VKBaseBoolInt(map['thumb_is_last']),
      thumbSrc: map['thumb_src'] as String,
      title: map['title'] as String,
      updated: map['updated'] as int,
      uploadByAdminsOnly: VKBaseBoolInt(map['upload_by_admins_only']),
    );
  }
}
