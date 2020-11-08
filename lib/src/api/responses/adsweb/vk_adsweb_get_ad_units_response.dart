import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKAdswebGetAdUnitsResponse {
  final int count;

  final List<VKAdswebGetAdUnitsResponseAdUnitsAdUnit> adUnits;

  const VKAdswebGetAdUnitsResponse({
    @required this.count,
    this.adUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'ad_units': adUnits
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdswebGetAdUnitsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdswebGetAdUnitsResponse(
      count: map['count'] as int,
      adUnits: map['ad_units']
          ?.map<VKAdswebGetAdUnitsResponseAdUnitsAdUnit>(
            (item) => VKAdswebGetAdUnitsResponseAdUnitsAdUnit.fromMap(item),
          )
          ?.toList(),
    );
  }
}
