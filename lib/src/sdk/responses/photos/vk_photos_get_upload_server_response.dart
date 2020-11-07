import 'package:meta/meta.dart';

class VKPhotosGetUploadServerResponse {
  /// Album ID.
  final int albumId;

  /// URL to upload photo.
  final String uploadUrl;

  /// Fallback URL if upload_url returned error.
  final String fallbackUploadUrl;

  /// User ID.
  final int userId;

  /// Group ID.
  final int groupId;

  const VKPhotosGetUploadServerResponse({
    @required this.albumId,
    @required this.uploadUrl,
    this.fallbackUploadUrl,
    @required this.userId,
    this.groupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'album_id': albumId,
      'upload_url': uploadUrl,
      'fallback_upload_url': fallbackUploadUrl,
      'user_id': userId,
      'group_id': groupId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosGetUploadServerResponse.fromMap(Map<String, dynamic> map) {
    return VKPhotosGetUploadServerResponse(
      albumId: map['album_id'] as int,
      uploadUrl: map['upload_url'] as String,
      fallbackUploadUrl: map['fallback_upload_url'] as String,
      userId: map['user_id'] as int,
      groupId: map['group_id'] as int,
    );
  }
}
