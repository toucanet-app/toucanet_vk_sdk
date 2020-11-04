import 'base_bool_int.dart';
import 'package:meta/meta.dart';

class BaseLikesInfo {
  /// Information whether current user can like the post.
  final BaseBoolInt canLike;

  /// Information whether current user can repost.
  final BaseBoolInt canPublish;

  /// Likes number.
  final int count;

  /// Information whether current uer has liked the post.
  final int userLikes;

  const BaseLikesInfo({
    @required this.canLike,
    this.canPublish,
    @required this.count,
    @required this.userLikes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'can_like': canLike?.value,
      'can_publish': canPublish?.value,
      'count': count,
      'user_likes': userLikes,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory BaseLikesInfo.fromMap(Map<String, dynamic> map) {
    return BaseLikesInfo(
      canLike: BaseBoolInt(map['can_like']),
      canPublish: BaseBoolInt(map['can_publish']),
      count: map['count'] as int,
      userLikes: map['user_likes'] as int,
    );
  }
}
