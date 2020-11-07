import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKAdswebGetFraudHistoryResponse {
  final int count;

  final List<VKAdswebGetFraudHistoryResponseEntriesEntry> entries;

  const VKAdswebGetFraudHistoryResponse({
    @required this.count,
    this.entries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'entries': entries
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdswebGetFraudHistoryResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdswebGetFraudHistoryResponse(
      count: map['count'] as int,
      entries: map['entries']
          ?.map<VKAdswebGetFraudHistoryResponseEntriesEntry>(
            (item) => VKAdswebGetFraudHistoryResponseEntriesEntry.fromMap(item),
          )
          ?.toList(),
    );
  }
}
