import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKBoardGetCommentsExtendedResponse {
  /// Total number.
  final int count;

  final List<VKBoardTopicComment> items;

  final VKBoardTopicPoll poll;

  final List<VKUsersUser> profiles;

  final List<VKGroupsGroup> groups;

  const VKBoardGetCommentsExtendedResponse({
    @required this.count,
    @required this.items,
    this.poll,
    @required this.profiles,
    @required this.groups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
      'poll': poll?.toMap(),
      'profiles': profiles?.map((item) => item?.toMap())?.toList(),
      'groups': groups?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBoardGetCommentsExtendedResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKBoardGetCommentsExtendedResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map((item) => VKBoardTopicComment.fromMap(item))
          ?.toList(),
      poll: VKBoardTopicPoll.fromMap(map['poll']),
      profiles:
          map['profiles']?.map((item) => VKUsersUser.fromMap(item))?.toList(),
      groups:
          map['groups']?.map((item) => VKGroupsGroup.fromMap(item))?.toList(),
    );
  }
}
