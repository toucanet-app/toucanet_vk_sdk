import 'base_bool_int.dart';

class BaseCommentsInfo {
  /// Information whether current user can comment the post.
  final BaseBoolInt canPost;

  /// Comments number.
  final int count;

  /// Information whether groups can comment the post.
  final bool groupsCanPost;

  const BaseCommentsInfo({
    this.canPost,
    this.count,
    this.groupsCanPost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'can_post': canPost?.value,
      'count': count,
      'groups_can_post': groupsCanPost,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory BaseCommentsInfo.fromMap(Map<String, dynamic> map) {
    return BaseCommentsInfo(
      canPost: BaseBoolInt(map['can_post']),
      count: map['count'] as int,
      groupsCanPost: map['groups_can_post'] as bool,
    );
  }
}
