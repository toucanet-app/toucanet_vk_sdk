import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKWallGetCommentsExtendedResponse {
  /// Total number.
  final int count;

  final List<VKWallWallComment> items;

  final bool showReplyButton;

  /// Information whether current user can comment the post.
  final bool canPost;

  /// Information whether groups can comment the post.
  final bool groupsCanPost;

  /// Count of replies of current level.
  final int currentLevelCount;

  final List<VKUsersUser> profiles;

  final List<VKGroupsGroup> groups;

  const VKWallGetCommentsExtendedResponse({
    @required this.count,
    @required this.items,
    this.showReplyButton,
    this.canPost,
    this.groupsCanPost,
    this.currentLevelCount,
    @required this.profiles,
    @required this.groups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
      'show_reply_button': showReplyButton,
      'can_post': canPost,
      'groups_can_post': groupsCanPost,
      'current_level_count': currentLevelCount,
      'profiles': profiles?.map((item) => item?.toMap())?.toList(),
      'groups': groups?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKWallGetCommentsExtendedResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKWallGetCommentsExtendedResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map((item) => VKWallWallComment.fromMap(item))
          ?.toList(),
      showReplyButton: map['show_reply_button'] as bool,
      canPost: map['can_post'] as bool,
      groupsCanPost: map['groups_can_post'] as bool,
      currentLevelCount: map['current_level_count'] as int,
      profiles:
          map['profiles']?.map((item) => VKUsersUser.fromMap(item))?.toList(),
      groups:
          map['groups']?.map((item) => VKGroupsGroup.fromMap(item))?.toList(),
    );
  }
}
