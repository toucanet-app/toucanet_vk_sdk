import 'package:meta/meta.dart';

import 'vk_ads_accesses.dart';

class VKAdsUsers {
  final List<VKAdsAccesses> accesses;

  /// User ID.
  final int userId;

  const VKAdsUsers({
    @required this.accesses,
    @required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accesses': accesses
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'user_id': userId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsUsers.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsUsers(
      accesses: map['accesses']
          ?.map<VKAdsAccesses>(
            (item) => VKAdsAccesses.fromMap(item),
          )
          ?.toList(),
      userId: map['user_id'] as int,
    );
  }
}
