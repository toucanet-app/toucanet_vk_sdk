import 'vk_utils_stats_city.dart';
import 'vk_utils_stats_country.dart';
import 'vk_utils_stats_sex_age.dart';

class VKUtilsStatsExtended {
  final List<VKUtilsStatsCity> cities;

  final List<VKUtilsStatsCountry> countries;

  final List<VKUtilsStatsSexAge> sexAge;

  /// Start time.
  final int timestamp;

  /// Total views number.
  final int views;

  const VKUtilsStatsExtended({
    this.cities,
    this.countries,
    this.sexAge,
    this.timestamp,
    this.views,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cities': cities?.map((item) => item?.toMap())?.toList(),
      'countries': countries?.map((item) => item?.toMap())?.toList(),
      'sex_age': sexAge?.map((item) => item?.toMap())?.toList(),
      'timestamp': timestamp,
      'views': views,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKUtilsStatsExtended.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKUtilsStatsExtended(
      cities: map['cities']
          ?.map((item) => VKUtilsStatsCity.fromMap(item))
          ?.toList(),
      countries: map['countries']
          ?.map((item) => VKUtilsStatsCountry.fromMap(item))
          ?.toList(),
      sexAge: map['sex_age']
          ?.map((item) => VKUtilsStatsSexAge.fromMap(item))
          ?.toList(),
      timestamp: map['timestamp'] as int,
      views: map['views'] as int,
    );
  }
}
