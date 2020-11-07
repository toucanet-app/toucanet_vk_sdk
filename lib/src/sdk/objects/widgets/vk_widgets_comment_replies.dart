import '../base/vk_base_bool_int.dart';
import 'vk_widgets_comment_replies_item.dart';

class VKWidgetsCommentReplies {
  /// Information whether current user can comment the post.
  final VKBaseBoolInt canPost;

  /// Comments number.
  final int count;

  final List<VKWidgetsCommentRepliesItem> replies;

  const VKWidgetsCommentReplies({
    this.canPost,
    this.count,
    this.replies,
  }) : assert(count == null || count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'can_post': canPost?.value,
      'count': count,
      'replies': replies?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKWidgetsCommentReplies.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKWidgetsCommentReplies(
      canPost: VKBaseBoolInt(map['can_post']),
      count: map['count'] as int,
      replies: map['replies']
          ?.map((item) => VKWidgetsCommentRepliesItem.fromMap(item))
          ?.toList(),
    );
  }
}
