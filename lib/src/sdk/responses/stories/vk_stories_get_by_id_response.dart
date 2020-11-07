import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKStoriesGetByIdResponse {
  /// Stories count.
  final int count;

  final List<VKStoriesStory> items;

  const VKStoriesGetByIdResponse({
    @required this.count,
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStoriesGetByIdResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKStoriesGetByIdResponse(
      count: map['count'] as int,
      items: map['items']
          ?.map<VKStoriesStory>(
            (item) => VKStoriesStory.fromMap(item),
          )
          ?.toList(),
    );
  }
}
