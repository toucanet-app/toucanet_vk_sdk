import 'package:meta/meta.dart';

class VKAdsPromotedPostReach {
  /// Hides amount.
  final int hide;

  /// Object ID from 'ids' parameter.
  final int id;

  /// Community joins.
  final int joinGroup;

  /// Link clicks.
  final int links;

  /// Subscribers reach.
  final int reachSubscribers;

  /// Total reach.
  final int reachTotal;

  /// Reports amount.
  final int report;

  /// Community clicks.
  final int toGroup;

  /// 'Unsubscribe' events amount.
  final int unsubscribe;

  /// Video views for 100 percent.
  final int videoViews100p;

  /// Video views for 25 percent.
  final int videoViews25p;

  /// Video views for 3 seconds.
  final int videoViews3s;

  /// Video views for 50 percent.
  final int videoViews50p;

  /// Video views for 75 percent.
  final int videoViews75p;

  /// Video starts.
  final int videoViewsStart;

  const VKAdsPromotedPostReach({
    @required this.hide,
    @required this.id,
    @required this.joinGroup,
    @required this.links,
    @required this.reachSubscribers,
    @required this.reachTotal,
    @required this.report,
    @required this.toGroup,
    @required this.unsubscribe,
    this.videoViews100p,
    this.videoViews25p,
    this.videoViews3s,
    this.videoViews50p,
    this.videoViews75p,
    this.videoViewsStart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hide': hide,
      'id': id,
      'join_group': joinGroup,
      'links': links,
      'reach_subscribers': reachSubscribers,
      'reach_total': reachTotal,
      'report': report,
      'to_group': toGroup,
      'unsubscribe': unsubscribe,
      'video_views_100p': videoViews100p,
      'video_views_25p': videoViews25p,
      'video_views_3s': videoViews3s,
      'video_views_50p': videoViews50p,
      'video_views_75p': videoViews75p,
      'video_views_start': videoViewsStart,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsPromotedPostReach.fromMap(Map<String, dynamic> map) {
    return VKAdsPromotedPostReach(
      hide: map['hide'] as int,
      id: map['id'] as int,
      joinGroup: map['join_group'] as int,
      links: map['links'] as int,
      reachSubscribers: map['reach_subscribers'] as int,
      reachTotal: map['reach_total'] as int,
      report: map['report'] as int,
      toGroup: map['to_group'] as int,
      unsubscribe: map['unsubscribe'] as int,
      videoViews100p: map['video_views_100p'] as int,
      videoViews25p: map['video_views_25p'] as int,
      videoViews3s: map['video_views_3s'] as int,
      videoViews50p: map['video_views_50p'] as int,
      videoViews75p: map['video_views_75p'] as int,
      videoViewsStart: map['video_views_start'] as int,
    );
  }
}
