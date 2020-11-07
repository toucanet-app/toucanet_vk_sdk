import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKAdsGetMusiciansResponse {
  /// Musicians.
  final List<VKAdsMusician> items;

  const VKAdsGetMusiciansResponse({
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsGetMusiciansResponse.fromMap(Map<String, dynamic> map) {
    return VKAdsGetMusiciansResponse(
      items: map['items']?.map((item) => VKAdsMusician.fromMap(item)),
    );
  }
}