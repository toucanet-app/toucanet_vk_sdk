import 'vk_stats_city.dart';
import 'vk_stats_country.dart';
import 'vk_stats_sex_age.dart';

class VKStatsViews {
  final List<VKStatsSexAge> age;

  final List<VKStatsCity> cities;

  final List<VKStatsCountry> countries;

  /// Number of views from mobile devices.
  final int mobileViews;

  final List<VKStatsSexAge> sex;

  final List<VKStatsSexAge> sexAge;

  /// Views number.
  final int views;

  /// Visitors number.
  final int visitors;

  const VKStatsViews({
    this.age,
    this.cities,
    this.countries,
    this.mobileViews,
    this.sex,
    this.sexAge,
    this.views,
    this.visitors,
  })  : assert(mobileViews == null || mobileViews >= 0),
        assert(views == null || views >= 0),
        assert(visitors == null || visitors >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'age': age
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'cities': cities
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'countries': countries
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'mobile_views': mobileViews,
      'sex': sex
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'sex_age': sexAge
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'views': views,
      'visitors': visitors,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStatsViews.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKStatsViews(
      age: map['age']
          ?.map<VKStatsSexAge>(
            (item) => VKStatsSexAge.fromMap(item),
          )
          ?.toList(),
      cities: map['cities']
          ?.map<VKStatsCity>(
            (item) => VKStatsCity.fromMap(item),
          )
          ?.toList(),
      countries: map['countries']
          ?.map<VKStatsCountry>(
            (item) => VKStatsCountry.fromMap(item),
          )
          ?.toList(),
      mobileViews: map['mobile_views'] as int,
      sex: map['sex']
          ?.map<VKStatsSexAge>(
            (item) => VKStatsSexAge.fromMap(item),
          )
          ?.toList(),
      sexAge: map['sex_age']
          ?.map<VKStatsSexAge>(
            (item) => VKStatsSexAge.fromMap(item),
          )
          ?.toList(),
      views: map['views'] as int,
      visitors: map['visitors'] as int,
    );
  }
}
