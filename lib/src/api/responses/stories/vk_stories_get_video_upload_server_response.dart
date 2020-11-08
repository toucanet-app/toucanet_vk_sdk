import 'package:meta/meta.dart';

class VKStoriesGetVideoUploadServerResponse {
  /// Upload URL.
  final String uploadUrl;

  /// Users ID who can to see story..
  final List<int> userIds;

  const VKStoriesGetVideoUploadServerResponse({
    @required this.uploadUrl,
    @required this.userIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'upload_url': uploadUrl,
      'user_ids': userIds,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStoriesGetVideoUploadServerResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKStoriesGetVideoUploadServerResponse(
      uploadUrl: map['upload_url'] as String,
      userIds: map['user_ids'] as List<int>,
    );
  }
}
