class VKAdsStatsSexAge {
  /// Clicks rate.
  final double clicksRate;

  /// Impressions rate.
  final double impressionsRate;

  /// Sex and age interval.
  final String value;

  const VKAdsStatsSexAge({
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

  factory VKAdsStatsSexAge.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsStatsSexAge(
      clicksRate: map['clicks_rate'] as double,
      impressionsRate: map['impressions_rate'] as double,
      value: map['value'] as String,
    );
  }
}
