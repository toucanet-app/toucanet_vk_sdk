import 'vk_base_bool_int.dart';

class VKBaseCommentsInfo {
  /// Information whether current user can comment the post.
  final VKBaseBoolInt canPost;

  /// Comments number.
  final int count;

  /// Information whether groups can comment the post.
  final bool groupsCanPost;

  const VKBaseCommentsInfo({
    this.canPost,
    this.count,
    this.groupsCanPost,
  }) : assert(count == null || count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'can_post': canPost?.value,
      'count': count,
      'groups_can_post': groupsCanPost,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseCommentsInfo.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKBaseCommentsInfo(
      canPost: VKBaseBoolInt(map['can_post']),
      count: map['count'] as int,
      groupsCanPost: map['groups_can_post'] as bool,
    );
  }
}
