import 'package:meta/meta.dart';

class VKWallRepostResponse {
  final int success;

  /// Created post ID.
  final int postId;

  /// Reposts number.
  final int repostsCount;

  /// Reposts to wall number.
  final int wallRepostCount;

  /// Reposts to mail number.
  final int mailRepostCount;

  /// Reposts number.
  final int likesCount;

  const VKWallRepostResponse({
    @required this.success,
    @required this.postId,
    @required this.repostsCount,
    @required this.wallRepostCount,
    @required this.mailRepostCount,
    @required this.likesCount,
  })  : assert(repostsCount >= 1),
        assert(wallRepostCount >= 0),
        assert(mailRepostCount >= 0),
        assert(likesCount >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'success': success,
      'post_id': postId,
      'reposts_count': repostsCount,
      'wall_repost_count': wallRepostCount,
      'mail_repost_count': mailRepostCount,
      'likes_count': likesCount,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKWallRepostResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKWallRepostResponse(
      success: map['success'] as int,
      postId: map['post_id'] as int,
      repostsCount: map['reposts_count'] as int,
      wallRepostCount: map['wall_repost_count'] as int,
      mailRepostCount: map['mail_repost_count'] as int,
      likesCount: map['likes_count'] as int,
    );
  }
}
