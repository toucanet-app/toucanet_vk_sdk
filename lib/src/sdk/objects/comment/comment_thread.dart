import 'package:meta/meta.dart';

import '../wall/wall_wall_comment.dart';

class VKCommentThread {
  /// Information whether current user can comment the post.
  final bool canPost;

  /// Comments number.
  final int count;

  /// Information whether groups can comment the post.
  final bool groupsCanPost;

  final List<VKWallWallComment> items;

  /// Information whether recommended to display reply button.
  final bool showReplyButton;

  const VKCommentThread({
    this.canPost,
    @required this.count,
    this.groupsCanPost,
    this.items,
    this.showReplyButton,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'can_post': canPost,
      'count': count,
      'groups_can_post': groupsCanPost,
      'items': items?.map((item) => item?.toMap()),
      'show_reply_button': showReplyButton,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKCommentThread.fromMap(Map<String, dynamic> map) {
    return VKCommentThread(
      canPost: map['can_post'] as bool,
      count: map['count'] as int,
      groupsCanPost: map['groups_can_post'] as bool,
      items: map['items']?.map((item) => VKWallWallComment.fromMap(item)),
      showReplyButton: map['show_reply_button'] as bool,
    );
  }
}
