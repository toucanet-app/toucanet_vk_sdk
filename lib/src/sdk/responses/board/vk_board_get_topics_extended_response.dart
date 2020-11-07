import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKBoardGetTopicsExtendedResponse {
  /// Total number.
  final int count;

  final List<VKBoardTopic> items;

  final VKBoardDefaultOrder defaultOrder;

  /// Information whether current user can add topic.
  final VKBaseBoolInt canAddTopics;

  final List<VKUsersUserMin> profiles;

  const VKBoardGetTopicsExtendedResponse({
    @required this.count,
    @required this.items,
    @required this.defaultOrder,
    @required this.canAddTopics,
    @required this.profiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap())?.toList(),
      'default_order': defaultOrder?.value,
      'can_add_topics': canAddTopics?.value,
      'profiles': profiles?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBoardGetTopicsExtendedResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKBoardGetTopicsExtendedResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKBoardTopic.fromMap(item))?.toList(),
      defaultOrder: VKBoardDefaultOrder(map['default_order']),
      canAddTopics: VKBaseBoolInt(map['can_add_topics']),
      profiles: map['profiles']
          ?.map((item) => VKUsersUserMin.fromMap(item))
          ?.toList(),
    );
  }
}
