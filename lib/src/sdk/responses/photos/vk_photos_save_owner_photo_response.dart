import 'package:meta/meta.dart';

class VKPhotosSaveOwnerPhotoResponse {
  /// Photo hash.
  final String photoHash;

  /// Uploaded image url.
  final String photoSrc;

  /// Uploaded image url.
  final String photoSrcBig;

  /// Uploaded image url.
  final String photoSrcSmall;

  /// Returns 1 if profile photo is saved.
  final int saved;

  /// Created post ID.
  final int postId;

  const VKPhotosSaveOwnerPhotoResponse({
    @required this.photoHash,
    @required this.photoSrc,
    this.photoSrcBig,
    this.photoSrcSmall,
    this.saved,
    this.postId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'photo_hash': photoHash,
      'photo_src': photoSrc,
      'photo_src_big': photoSrcBig,
      'photo_src_small': photoSrcSmall,
      'saved': saved,
      'post_id': postId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosSaveOwnerPhotoResponse.fromMap(Map<String, dynamic> map) {
    return VKPhotosSaveOwnerPhotoResponse(
      photoHash: map['photo_hash'] as String,
      photoSrc: map['photo_src'] as String,
      photoSrcBig: map['photo_src_big'] as String,
      photoSrcSmall: map['photo_src_small'] as String,
      saved: map['saved'] as int,
      postId: map['post_id'] as int,
    );
  }
}
