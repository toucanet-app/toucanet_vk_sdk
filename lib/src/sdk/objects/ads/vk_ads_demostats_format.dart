import 'vk_ads_stats_age.dart';
import 'vk_ads_stats_cities.dart';
import 'vk_ads_stats_sex.dart';
import 'vk_ads_stats_sex_age.dart';

class VKAdsDemostatsFormat {
  final List<VKAdsStatsAge> age;

  final List<VKAdsStatsCities> cities;

  /// Day as YYYY-MM-DD.
  final String day;

  /// Month as YYYY-MM.
  final String month;

  /// 1 if period=overall.
  final int overall;

  final List<VKAdsStatsSex> sex;

  final List<VKAdsStatsSexAge> sexAge;

  const VKAdsDemostatsFormat({
    this.age,
    this.cities,
    this.day,
    this.month,
    this.overall,
    this.sex,
    this.sexAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'age': age?.map((item) => item?.toMap())?.toList(),
      'cities': cities?.map((item) => item?.toMap())?.toList(),
      'day': day,
      'month': month,
      'overall': overall,
      'sex': sex?.map((item) => item?.toMap())?.toList(),
      'sex_age': sexAge?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsDemostatsFormat.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsDemostatsFormat(
      age: map['age']?.map((item) => VKAdsStatsAge.fromMap(item))?.toList(),
      cities: map['cities']
          ?.map((item) => VKAdsStatsCities.fromMap(item))
          ?.toList(),
      day: map['day'] as String,
      month: map['month'] as String,
      overall: map['overall'] as int,
      sex: map['sex']?.map((item) => VKAdsStatsSex.fromMap(item))?.toList(),
      sexAge: map['sex_age']
          ?.map((item) => VKAdsStatsSexAge.fromMap(item))
          ?.toList(),
    );
  }
}
