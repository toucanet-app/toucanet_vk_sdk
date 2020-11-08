import 'package:meta/meta.dart';

import 'vk_base_bool_int.dart';

class VKBaseLikesInfo {
  /// Information whether current user can like the post.
  final VKBaseBoolInt canLike;

  /// Information whether current user can repost.
  final VKBaseBoolInt canPublish;

  /// Likes number.
  final int count;

  /// Information whether current uer has liked the post.
  final int userLikes;

  const VKBaseLikesInfo({
    @required this.canLike,
    this.canPublish,
    @required this.count,
    @required this.userLikes,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'can_like': canLike?.value,
      'can_publish': canPublish?.value,
      'count': count,
      'user_likes': userLikes,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseLikesInfo.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKBaseLikesInfo(
      canLike: VKBaseBoolInt(map['can_like']),
      canPublish: VKBaseBoolInt(map['can_publish']),
      count: map['count'] as int,
      userLikes: map['user_likes'] as int,
    );
  }
}
