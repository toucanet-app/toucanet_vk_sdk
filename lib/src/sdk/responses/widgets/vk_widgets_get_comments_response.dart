import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKWidgetsGetCommentsResponse {
  /// Total number.
  final int count;

  final List<VKWidgetsWidgetComment> posts;

  const VKWidgetsGetCommentsResponse({
    @required this.count,
    @required this.posts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'posts': posts
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKWidgetsGetCommentsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKWidgetsGetCommentsResponse(
      count: map['count'] as int,
      posts: map['posts']
          ?.map<VKWidgetsWidgetComment>(
            (item) => VKWidgetsWidgetComment.fromMap(item),
          )
          ?.toList(),
    );
  }
}
