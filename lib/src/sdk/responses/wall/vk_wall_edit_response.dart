import 'package:meta/meta.dart';

class VKWallEditResponse {
  /// Edited post ID.
  final int postId;

  const VKWallEditResponse({
    @required this.postId,
  }) : assert(postId >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'post_id': postId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKWallEditResponse.fromMap(Map<String, dynamic> map) {
    return VKWallEditResponse(
      postId: map['post_id'] as int,
    );
  }
}
