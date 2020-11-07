import 'package:meta/meta.dart';

class VKWallPostAdsStealthResponse {
  /// Created post ID.
  final int postId;

  const VKWallPostAdsStealthResponse({
    @required this.postId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'post_id': postId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKWallPostAdsStealthResponse.fromMap(Map<String, dynamic> map) {
    return VKWallPostAdsStealthResponse(
      postId: map['post_id'] as int,
    );
  }
}
