import 'utils_stats_city.dart';
import 'utils_stats_country.dart';
import 'utils_stats_sex_age.dart';

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
      'cities': cities?.map((item) => item?.toMap()),
      'countries': countries?.map((item) => item?.toMap()),
      'sex_age': sexAge?.map((item) => item?.toMap()),
      'timestamp': timestamp,
      'views': views,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKUtilsStatsExtended.fromMap(Map<String, dynamic> map) {
    return VKUtilsStatsExtended(
      cities: map['cities']?.map((item) => VKUtilsStatsCity.fromMap(item)),
      countries:
          map['countries']?.map((item) => VKUtilsStatsCountry.fromMap(item)),
      sexAge: map['sex_age']?.map((item) => VKUtilsStatsSexAge.fromMap(item)),
      timestamp: map['timestamp'] as int,
      views: map['views'] as int,
    );
  }
}
