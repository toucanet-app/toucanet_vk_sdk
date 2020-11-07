import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKStoriesGetViewersExtendedV5115Response {
  /// Viewers count.
  final int count;

  final List<VKStoriesViewersItem> items;

  final String hiddenReason;

  const VKStoriesGetViewersExtendedV5115Response({
    @required this.count,
    @required this.items,
    this.hiddenReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
      'hidden_reason': hiddenReason,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStoriesGetViewersExtendedV5115Response.fromMap(
      Map<String, dynamic> map) {
    return VKStoriesGetViewersExtendedV5115Response(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKStoriesViewersItem.fromMap(item)),
      hiddenReason: map['hidden_reason'] as String,
    );
  }
}
