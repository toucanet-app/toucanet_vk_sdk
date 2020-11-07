import 'vk_ads_stats_sex_value.dart';

class VKAdsStatsSex {
  /// Clicks rate.
  final double clicksRate;

  /// Impressions rate.
  final double impressionsRate;

  final VKAdsStatsSexValue value;

  const VKAdsStatsSex({
    this.clicksRate,
    this.impressionsRate,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clicks_rate': clicksRate,
      'impressions_rate': impressionsRate,
      'value': value?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsStatsSex.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsStatsSex(
      clicksRate: map['clicks_rate'] as double,
      impressionsRate: map['impressions_rate'] as double,
      value: VKAdsStatsSexValue(map['value']),
    );
  }
}
