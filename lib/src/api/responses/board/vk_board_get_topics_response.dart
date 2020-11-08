import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKBoardGetTopicsResponse {
  /// Total number.
  final int count;

  final List<VKBoardTopic> items;

  final VKBoardDefaultOrder defaultOrder;

  /// Information whether current user can add topic.
  final VKBaseBoolInt canAddTopics;

  const VKBoardGetTopicsResponse({
    @required this.count,
    @required this.items,
    @required this.defaultOrder,
    @required this.canAddTopics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'default_order': defaultOrder?.value,
      'can_add_topics': canAddTopics?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBoardGetTopicsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKBoardGetTopicsResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKBoardTopic>(
            (item) => VKBoardTopic.fromMap(item),
          )
          ?.toList(),
      defaultOrder: VKBoardDefaultOrder(map['default_order']),
      canAddTopics: VKBaseBoolInt(map['can_add_topics']),
    );
  }
}
