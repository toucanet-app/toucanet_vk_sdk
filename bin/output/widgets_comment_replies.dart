import 'base_bool_int.dart';
import 'widgets_comment_replies_item.dart';

class WidgetsCommentReplies {
  /// Information whether current user can comment the post.
  final BaseBoolInt canPost;

  /// Comments number.
  final int count;

  final List<WidgetsCommentRepliesItem> replies;

  const WidgetsCommentReplies({
    this.canPost,
    this.count,
    this.replies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'can_post': canPost?.value,
      'count': count,
      'replies': replies?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory WidgetsCommentReplies.fromMap(Map<String, dynamic> map) {
    return WidgetsCommentReplies(
      canPost: BaseBoolInt(map['can_post']),
      count: map['count'] as int,
      replies: map['replies']
          ?.map((item) => WidgetsCommentRepliesItem.fromMap(item)),
    );
  }
}
