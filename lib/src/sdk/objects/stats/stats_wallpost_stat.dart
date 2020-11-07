import 'stats_sex_age.dart';

class VKStatsWallpostStat {
  final int postId;

  /// Hidings number.
  final int hide;

  /// People have joined the group.
  final int joinGroup;

  /// Link clickthrough.
  final int links;

  /// Subscribers reach.
  final int reachSubscribers;

  final int reachSubscribersCount;

  /// Total reach.
  final int reachTotal;

  final int reachTotalCount;

  final int reachViral;

  final int reachAds;

  /// Reports number.
  final int report;

  /// Clickthrough to community.
  final int toGroup;

  /// Unsubscribed members.
  final int unsubscribe;

  final List<VKStatsSexAge> sexAge;

  const VKStatsWallpostStat({
    this.postId,
    this.hide,
    this.joinGroup,
    this.links,
    this.reachSubscribers,
    this.reachSubscribersCount,
    this.reachTotal,
    this.reachTotalCount,
    this.reachViral,
    this.reachAds,
    this.report,
    this.toGroup,
    this.unsubscribe,
    this.sexAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'post_id': postId,
      'hide': hide,
      'join_group': joinGroup,
      'links': links,
      'reach_subscribers': reachSubscribers,
      'reach_subscribers_count': reachSubscribersCount,
      'reach_total': reachTotal,
      'reach_total_count': reachTotalCount,
      'reach_viral': reachViral,
      'reach_ads': reachAds,
      'report': report,
      'to_group': toGroup,
      'unsubscribe': unsubscribe,
      'sex_age': sexAge?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStatsWallpostStat.fromMap(Map<String, dynamic> map) {
    return VKStatsWallpostStat(
      postId: map['post_id'] as int,
      hide: map['hide'] as int,
      joinGroup: map['join_group'] as int,
      links: map['links'] as int,
      reachSubscribers: map['reach_subscribers'] as int,
      reachSubscribersCount: map['reach_subscribers_count'] as int,
      reachTotal: map['reach_total'] as int,
      reachTotalCount: map['reach_total_count'] as int,
      reachViral: map['reach_viral'] as int,
      reachAds: map['reach_ads'] as int,
      report: map['report'] as int,
      toGroup: map['to_group'] as int,
      unsubscribe: map['unsubscribe'] as int,
      sexAge: map['sex_age']?.map((item) => VKStatsSexAge.fromMap(item)),
    );
  }
}
