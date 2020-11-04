import 'package:meta/meta.dart';

class AdswebGetFraudHistoryResponseEntriesEntry {
  final int siteId;

  final String day;

  const AdswebGetFraudHistoryResponseEntriesEntry({
    @required this.siteId,
    @required this.day,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'site_id': siteId,
      'day': day,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AdswebGetFraudHistoryResponseEntriesEntry.fromMap(
      Map<String, dynamic> map) {
    return AdswebGetFraudHistoryResponseEntriesEntry(
      siteId: map['site_id'] as int,
      day: map['day'] as String,
    );
  }
}
