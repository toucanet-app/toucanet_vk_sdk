import 'vk_stats_city.dart';
import 'vk_stats_country.dart';
import 'vk_stats_sex_age.dart';

class VKStatsReach {
  final List<VKStatsSexAge> age;

  final List<VKStatsCity> cities;

  final List<VKStatsCountry> countries;

  /// Reach count from mobile devices.
  final int mobileReach;

  /// Reach count.
  final int reach;

  /// Subscribers reach count.
  final int reachSubscribers;

  final List<VKStatsSexAge> sex;

  final List<VKStatsSexAge> sexAge;

  const VKStatsReach({
    this.age,
    this.cities,
    this.countries,
    this.mobileReach,
    this.reach,
    this.reachSubscribers,
    this.sex,
    this.sexAge,
  })  : assert(mobileReach == null || mobileReach >= 0),
        assert(reach == null || reach >= 0),
        assert(reachSubscribers == null || reachSubscribers >= 0);

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
      'mobile_reach': mobileReach,
      'reach': reach,
      'reach_subscribers': reachSubscribers,
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
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStatsReach.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKStatsReach(
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
      mobileReach: map['mobile_reach'] as int,
      reach: map['reach'] as int,
      reachSubscribers: map['reach_subscribers'] as int,
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
    );
  }
}
