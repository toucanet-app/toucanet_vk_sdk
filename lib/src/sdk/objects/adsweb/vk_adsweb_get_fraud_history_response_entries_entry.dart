import 'package:meta/meta.dart';

class VKAdswebGetFraudHistoryResponseEntriesEntry {
  final int siteId;

  final String day;

  const VKAdswebGetFraudHistoryResponseEntriesEntry({
    @required this.siteId,
    @required this.day,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'site_id': siteId,
      'day': day,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdswebGetFraudHistoryResponseEntriesEntry.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdswebGetFraudHistoryResponseEntriesEntry(
      siteId: map['site_id'] as int,
      day: map['day'] as String,
    );
  }
}
