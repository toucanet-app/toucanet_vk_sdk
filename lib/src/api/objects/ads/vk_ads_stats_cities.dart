class VKAdsStatsCities {
  /// Clicks rate.
  final double clicksRate;

  /// Impressions rate.
  final double impressionsRate;

  /// City name.
  final String name;

  /// City ID.
  final int value;

  const VKAdsStatsCities({
    this.clicksRate,
    this.impressionsRate,
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clicks_rate': clicksRate,
      'impressions_rate': impressionsRate,
      'name': name,
      'value': value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsStatsCities.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsStatsCities(
      clicksRate: map['clicks_rate'] as double,
      impressionsRate: map['impressions_rate'] as double,
      name: map['name'] as String,
      value: map['value'] as int,
    );
  }
}
