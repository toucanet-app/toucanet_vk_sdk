import 'stats_sex_age.dart';
import 'stats_city.dart';
import 'stats_country.dart';

class StatsReach {
  final List<StatsSexAge> age;

  final List<StatsCity> cities;

  final List<StatsCountry> countries;

  /// Reach count from mobile devices.
  final int mobileReach;

  /// Reach count.
  final int reach;

  /// Subscribers reach count.
  final int reachSubscribers;

  final List<StatsSexAge> sex;

  final List<StatsSexAge> sexAge;

  const StatsReach({
    this.age,
    this.cities,
    this.countries,
    this.mobileReach,
    this.reach,
    this.reachSubscribers,
    this.sex,
    this.sexAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'age': age?.map((item) => item?.toMap()),
      'cities': cities?.map((item) => item?.toMap()),
      'countries': countries?.map((item) => item?.toMap()),
      'mobile_reach': mobileReach,
      'reach': reach,
      'reach_subscribers': reachSubscribers,
      'sex': sex?.map((item) => item?.toMap()),
      'sex_age': sexAge?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory StatsReach.fromMap(Map<String, dynamic> map) {
    return StatsReach(
      age: map['age']?.map((item) => StatsSexAge.fromMap(item)),
      cities: map['cities']?.map((item) => StatsCity.fromMap(item)),
      countries: map['countries']?.map((item) => StatsCountry.fromMap(item)),
      mobileReach: map['mobile_reach'] as int,
      reach: map['reach'] as int,
      reachSubscribers: map['reach_subscribers'] as int,
      sex: map['sex']?.map((item) => StatsSexAge.fromMap(item)),
      sexAge: map['sex_age']?.map((item) => StatsSexAge.fromMap(item)),
    );
  }
}
