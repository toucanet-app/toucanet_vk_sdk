import 'ads_stats_sex_value.dart';

class AdsStatsSex {
  /// Clicks rate.
  final double clicksRate;

  /// Impressions rate.
  final double impressionsRate;

  final AdsStatsSexValue value;

  const AdsStatsSex({
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

  factory AdsStatsSex.fromMap(Map<String, dynamic> map) {
    return AdsStatsSex(
      clicksRate: map['clicks_rate'] as double,
      impressionsRate: map['impressions_rate'] as double,
      value: AdsStatsSexValue(map['value']),
    );
  }
}
