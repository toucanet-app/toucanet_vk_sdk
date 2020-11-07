import 'stats_city.dart';
import 'stats_country.dart';
import 'stats_sex_age.dart';

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
  })  : assert(mobileViews >= 0),
        assert(views >= 0),
        assert(visitors >= 0);

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

  factory VKStatsViews.fromMap(Map<String, dynamic> map) {
    return VKStatsViews(
      age: map['age']?.map((item) => VKStatsSexAge.fromMap(item)),
      cities: map['cities']?.map((item) => VKStatsCity.fromMap(item)),
      countries: map['countries']?.map((item) => VKStatsCountry.fromMap(item)),
      mobileViews: map['mobile_views'] as int,
      sex: map['sex']?.map((item) => VKStatsSexAge.fromMap(item)),
      sexAge: map['sex_age']?.map((item) => VKStatsSexAge.fromMap(item)),
      views: map['views'] as int,
      visitors: map['visitors'] as int,
    );
  }
}
