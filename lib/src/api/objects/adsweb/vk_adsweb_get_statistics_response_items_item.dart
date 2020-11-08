class VKAdswebGetStatisticsResponseItemsItem {
  final int siteId;

  final int adUnitId;

  final int overallCount;

  final int monthsCount;

  final String monthMin;

  final String monthMax;

  final int daysCount;

  final String dayMin;

  final String dayMax;

  final int hoursCount;

  final String hourMin;

  final String hourMax;

  final List<dynamic> stats;

  const VKAdswebGetStatisticsResponseItemsItem({
    this.siteId,
    this.adUnitId,
    this.overallCount,
    this.monthsCount,
    this.monthMin,
    this.monthMax,
    this.daysCount,
    this.dayMin,
    this.dayMax,
    this.hoursCount,
    this.hourMin,
    this.hourMax,
    this.stats,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'site_id': siteId,
      'ad_unit_id': adUnitId,
      'overall_count': overallCount,
      'months_count': monthsCount,
      'month_min': monthMin,
      'month_max': monthMax,
      'days_count': daysCount,
      'day_min': dayMin,
      'day_max': dayMax,
      'hours_count': hoursCount,
      'hour_min': hourMin,
      'hour_max': hourMax,
      'stats': stats,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdswebGetStatisticsResponseItemsItem.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdswebGetStatisticsResponseItemsItem(
      siteId: map['site_id'] as int,
      adUnitId: map['ad_unit_id'] as int,
      overallCount: map['overall_count'] as int,
      monthsCount: map['months_count'] as int,
      monthMin: map['month_min'] as String,
      monthMax: map['month_max'] as String,
      daysCount: map['days_count'] as int,
      dayMin: map['day_min'] as String,
      dayMax: map['day_max'] as String,
      hoursCount: map['hours_count'] as int,
      hourMin: map['hour_min'] as String,
      hourMax: map['hour_max'] as String,
      stats: map['stats'] as List<dynamic>,
    );
  }
}
