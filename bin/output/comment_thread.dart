import 'wall_wall_comment.dart';
import 'package:meta/meta.dart';

class CommentThread {
  /// Information whether current user can comment the post.
  final bool canPost;

  /// Comments number.
  final int count;

  /// Information whether groups can comment the post.
  final bool groupsCanPost;

  final List<WallWallComment> items;

  /// Information whether recommended to display reply button.
  final bool showReplyButton;

  const CommentThread({
    this.canPost,
    @required this.count,
    this.groupsCanPost,
    this.items,
    this.showReplyButton,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'can_post': canPost,
      'count': count,
      'groups_can_post': groupsCanPost,
      'items': items?.map((item) => item?.toMap()),
      'show_reply_button': showReplyButton,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory CommentThread.fromMap(Map<String, dynamic> map) {
    return CommentThread(
      canPost: map['can_post'] as bool,
      count: map['count'] as int,
      groupsCanPost: map['groups_can_post'] as bool,
      items: map['items']?.map((item) => WallWallComment.fromMap(item)),
      showReplyButton: map['show_reply_button'] as bool,
    );
  }
}
