class VKAdsStatsAge {
  /// Clicks rate.
  final double clicksRate;

  /// Impressions rate.
  final double impressionsRate;

  /// Age interval.
  final String value;

  const VKAdsStatsAge({
    this.clicksRate,
    this.impressionsRate,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clicks_rate': clicksRate,
      'impressions_rate': impressionsRate,
      'value': value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsStatsAge.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsStatsAge(
      clicksRate: map['clicks_rate'] as double,
      impressionsRate: map['impressions_rate'] as double,
      value: map['value'] as String,
    );
  }
}
