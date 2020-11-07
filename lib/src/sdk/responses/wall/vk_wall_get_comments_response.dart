import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKWallGetCommentsResponse {
  /// Total number.
  final int count;

  final List<VKWallWallComment> items;

  /// Information whether current user can comment the post.
  final bool canPost;

  /// Information whether groups can comment the post.
  final bool groupsCanPost;

  /// Count of replies of current level.
  final int currentLevelCount;

  const VKWallGetCommentsResponse({
    @required this.count,
    @required this.items,
    this.canPost,
    this.groupsCanPost,
    this.currentLevelCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
      'can_post': canPost,
      'groups_can_post': groupsCanPost,
      'current_level_count': currentLevelCount,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKWallGetCommentsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKWallGetCommentsResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map((item) => VKWallWallComment.fromMap(item))
          ?.toList(),
      canPost: map['can_post'] as bool,
      groupsCanPost: map['groups_can_post'] as bool,
      currentLevelCount: map['current_level_count'] as int,
    );
  }
}
