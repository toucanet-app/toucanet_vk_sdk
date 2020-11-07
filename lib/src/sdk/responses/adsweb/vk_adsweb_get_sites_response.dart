import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKAdswebGetSitesResponse {
  final int count;

  final List<VKAdswebGetSitesResponseSitesSite> sites;

  const VKAdswebGetSitesResponse({
    @required this.count,
    this.sites,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'sites': sites?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdswebGetSitesResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdswebGetSitesResponse(
      count: map['count'] as int,
      sites: map['sites']
          ?.map((item) => VKAdswebGetSitesResponseSitesSite.fromMap(item))
          ?.toList(),
    );
  }
}
