import 'package:meta/meta.dart';

class VKStoriesGetPhotoUploadServerResponse {
  /// Upload URL.
  final String uploadUrl;

  /// Users ID who can to see story..
  final List<int> userIds;

  const VKStoriesGetPhotoUploadServerResponse({
    @required this.uploadUrl,
    @required this.userIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'upload_url': uploadUrl,
      'user_ids': userIds,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStoriesGetPhotoUploadServerResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKStoriesGetPhotoUploadServerResponse(
      uploadUrl: map['upload_url'] as String,
      userIds: map['user_ids'] as List<int>,
    );
  }
}
