import 'package:meta/meta.dart';

class VKWallPostResponse {
  /// Created post ID.
  final int postId;

  const VKWallPostResponse({
    @required this.postId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'post_id': postId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKWallPostResponse.fromMap(Map<String, dynamic> map) {
    return VKWallPostResponse(
      postId: map['post_id'] as int,
    );
  }
}
