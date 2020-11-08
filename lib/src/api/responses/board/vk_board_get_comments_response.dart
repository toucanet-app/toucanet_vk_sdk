import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKBoardGetCommentsResponse {
  /// Total number.
  final int count;

  final List<VKBoardTopicComment> items;

  final VKBoardTopicPoll poll;

  const VKBoardGetCommentsResponse({
    @required this.count,
    @required this.items,
    this.poll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'poll': poll?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBoardGetCommentsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKBoardGetCommentsResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKBoardTopicComment>(
            (item) => VKBoardTopicComment.fromMap(item),
          )
          ?.toList(),
      poll: VKBoardTopicPoll.fromMap(map['poll']),
    );
  }
}
