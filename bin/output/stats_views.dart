import 'stats_sex_age.dart';
import 'stats_city.dart';
import 'stats_country.dart';

class StatsViews {
  final List<StatsSexAge> age;

  final List<StatsCity> cities;

  final List<StatsCountry> countries;

  /// Number of views from mobile devices.
  final int mobileViews;

  final List<StatsSexAge> sex;

  final List<StatsSexAge> sexAge;

  /// Views number.
  final int views;

  /// Visitors number.
  final int visitors;

  const StatsViews({
    this.age,
    this.cities,
    this.countries,
    this.mobileViews,
    this.sex,
    this.sexAge,
    this.views,
    this.visitors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'age': age?.map((item) => item?.toMap()),
      'cities': cities?.map((item) => item?.toMap()),
      'countries': countries?.map((item) => item?.toMap()),
      'mobile_views': mobileViews,
      'sex': sex?.map((item) => item?.toMap()),
      'sex_age': sexAge?.map((item) => item?.toMap()),
      'views': views,
      'visitors': visitors,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory StatsViews.fromMap(Map<String, dynamic> map) {
    return StatsViews(
      age: map['age']?.map((item) => StatsSexAge.fromMap(item)),
      cities: map['cities']?.map((item) => StatsCity.fromMap(item)),
      countries: map['countries']?.map((item) => StatsCountry.fromMap(item)),
      mobileViews: map['mobile_views'] as int,
      sex: map['sex']?.map((item) => StatsSexAge.fromMap(item)),
      sexAge: map['sex_age']?.map((item) => StatsSexAge.fromMap(item)),
      views: map['views'] as int,
      visitors: map['visitors'] as int,
    );
  }
}
