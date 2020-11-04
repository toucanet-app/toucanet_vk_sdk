import 'utils_stats_city.dart';
import 'utils_stats_country.dart';
import 'utils_stats_sex_age.dart';

class UtilsStatsExtended {
  final List<UtilsStatsCity> cities;

  final List<UtilsStatsCountry> countries;

  final List<UtilsStatsSexAge> sexAge;

  /// Start time.
  final int timestamp;

  /// Total views number.
  final int views;

  const UtilsStatsExtended({
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

  factory UtilsStatsExtended.fromMap(Map<String, dynamic> map) {
    return UtilsStatsExtended(
      cities: map['cities']?.map((item) => UtilsStatsCity.fromMap(item)),
      countries: map['countries']?.map((item) => UtilsStatsCountry.fromMap(item)),
      sexAge: map['sex_age']?.map((item) => UtilsStatsSexAge.fromMap(item)),
      timestamp: map['timestamp'] as int,
      views: map['views'] as int,
    );
  }
}
