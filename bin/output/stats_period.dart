import 'stats_activity.dart';
import 'stats_reach.dart';
import 'stats_views.dart';

class StatsPeriod {
  final StatsActivity activity;

  /// Unix timestamp.
  final int periodFrom;

  /// Unix timestamp.
  final int periodTo;

  final StatsReach reach;

  final StatsViews visitors;

  const StatsPeriod({
    this.activity,
    this.periodFrom,
    this.periodTo,
    this.reach,
    this.visitors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activity': activity?.toMap(),
      'period_from': periodFrom,
      'period_to': periodTo,
      'reach': reach?.toMap(),
      'visitors': visitors?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory StatsPeriod.fromMap(Map<String, dynamic> map) {
    return StatsPeriod(
      activity: StatsActivity.fromMap(map['activity']),
      periodFrom: map['period_from'] as int,
      periodTo: map['period_to'] as int,
      reach: StatsReach.fromMap(map['reach']),
      visitors: StatsViews.fromMap(map['visitors']),
    );
  }
}
