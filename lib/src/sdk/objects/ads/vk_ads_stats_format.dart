class VKAdsStatsFormat {
  /// Clicks number.
  final int clicks;

  /// Day as YYYY-MM-DD.
  final String day;

  /// Impressions number.
  final int impressions;

  /// Events number.
  final int joinRate;

  /// Month as YYYY-MM.
  final String month;

  /// 1 if period=overall.
  final int overall;

  /// Reach .
  final int reach;

  /// Spent funds.
  final int spent;

  /// Clickthoughs to the advertised site.
  final int videoClicksSite;

  /// Video views number.
  final int videoViews;

  /// Video views (full video).
  final int videoViewsFull;

  /// Video views (half of video).
  final int videoViewsHalf;

  const VKAdsStatsFormat({
    this.clicks,
    this.day,
    this.impressions,
    this.joinRate,
    this.month,
    this.overall,
    this.reach,
    this.spent,
    this.videoClicksSite,
    this.videoViews,
    this.videoViewsFull,
    this.videoViewsHalf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clicks': clicks,
      'day': day,
      'impressions': impressions,
      'join_rate': joinRate,
      'month': month,
      'overall': overall,
      'reach': reach,
      'spent': spent,
      'video_clicks_site': videoClicksSite,
      'video_views': videoViews,
      'video_views_full': videoViewsFull,
      'video_views_half': videoViewsHalf,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsStatsFormat.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsStatsFormat(
      clicks: map['clicks'] as int,
      day: map['day'] as String,
      impressions: map['impressions'] as int,
      joinRate: map['join_rate'] as int,
      month: map['month'] as String,
      overall: map['overall'] as int,
      reach: map['reach'] as int,
      spent: map['spent'] as int,
      videoClicksSite: map['video_clicks_site'] as int,
      videoViews: map['video_views'] as int,
      videoViewsFull: map['video_views_full'] as int,
      videoViewsHalf: map['video_views_half'] as int,
    );
  }
}
