import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKAccountGetActiveOffersResponse {
  /// Total number.
  final int count;

  final List<VKAccountOffer> items;

  const VKAccountGetActiveOffersResponse({
    @required this.count,
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAccountGetActiveOffersResponse.fromMap(Map<String, dynamic> map) {
    return VKAccountGetActiveOffersResponse(
      count: map['count'] as int,
      items: map['items']?.map((item) => VKAccountOffer.fromMap(item)),
    );
  }
}
