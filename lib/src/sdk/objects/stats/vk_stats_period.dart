import 'vk_stats_activity.dart';
import 'vk_stats_reach.dart';
import 'vk_stats_views.dart';

class VKStatsPeriod {
  final VKStatsActivity activity;

  /// Unix timestamp.
  final int periodFrom;

  /// Unix timestamp.
  final int periodTo;

  final VKStatsReach reach;

  final VKStatsViews visitors;

  const VKStatsPeriod({
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

  factory VKStatsPeriod.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKStatsPeriod(
      activity: VKStatsActivity.fromMap(map['activity']),
      periodFrom: map['period_from'] as int,
      periodTo: map['period_to'] as int,
      reach: VKStatsReach.fromMap(map['reach']),
      visitors: VKStatsViews.fromMap(map['visitors']),
    );
  }
}
