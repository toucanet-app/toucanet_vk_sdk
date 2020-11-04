import 'ads_campaign_status.dart';
import 'ads_campaign_type.dart';
import 'package:meta/meta.dart';

class AdsCampaign {
  /// Campaign's total limit, rubles.
  final String allLimit;

  /// Campaign's day limit, rubles.
  final String dayLimit;

  /// Campaign ID.
  final int id;

  /// Campaign title.
  final String name;

  /// Campaign start time, as Unixtime.
  final int startTime;

  final AdsCampaignStatus status;

  /// Campaign stop time, as Unixtime.
  final int stopTime;

  final AdsCampaignType type;

  const AdsCampaign({
    @required this.allLimit,
    @required this.dayLimit,
    @required this.id,
    @required this.name,
    @required this.startTime,
    @required this.status,
    @required this.stopTime,
    @required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all_limit': allLimit,
      'day_limit': dayLimit,
      'id': id,
      'name': name,
      'start_time': startTime,
      'status': status?.value,
      'stop_time': stopTime,
      'type': type?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AdsCampaign.fromMap(Map<String, dynamic> map) {
    return AdsCampaign(
      allLimit: map['all_limit'] as String,
      dayLimit: map['day_limit'] as String,
      id: map['id'] as int,
      name: map['name'] as String,
      startTime: map['start_time'] as int,
      status: AdsCampaignStatus(map['status']),
      stopTime: map['stop_time'] as int,
      type: AdsCampaignType(map['type']),
    );
  }
}
