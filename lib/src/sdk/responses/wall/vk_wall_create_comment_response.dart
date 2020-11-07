import 'package:meta/meta.dart';

class VKWallCreateCommentResponse {
  /// Created comment ID.
  final int commentId;

  const VKWallCreateCommentResponse({
    @required this.commentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment_id': commentId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKWallCreateCommentResponse.fromMap(Map<String, dynamic> map) {
    return VKWallCreateCommentResponse(
      commentId: map['comment_id'] as int,
    );
  }
}
