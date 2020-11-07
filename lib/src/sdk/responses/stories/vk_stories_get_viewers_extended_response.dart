import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKStoriesGetViewersExtendedResponse {
  /// Viewers count.
  final int count;

  final List<VKUsersUserFull> items;

  const VKStoriesGetViewersExtendedResponse({
    @required this.count,
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStoriesGetViewersExtendedResponse.fromMap(
      Map<String, dynamic> map) {
    return VKStoriesGetViewersExtendedResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKUsersUserFull.fromMap(item)),
    );
  }
}
