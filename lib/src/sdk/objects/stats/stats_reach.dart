import 'stats_city.dart';
import 'stats_country.dart';
import 'stats_sex_age.dart';

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
  })  : assert(mobileReach >= 0),
        assert(reach >= 0),
        assert(reachSubscribers >= 0);

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

  factory VKStatsReach.fromMap(Map<String, dynamic> map) {
    return VKStatsReach(
      age: map['age']?.map((item) => VKStatsSexAge.fromMap(item)),
      cities: map['cities']?.map((item) => VKStatsCity.fromMap(item)),
      countries: map['countries']?.map((item) => VKStatsCountry.fromMap(item)),
      mobileReach: map['mobile_reach'] as int,
      reach: map['reach'] as int,
      reachSubscribers: map['reach_subscribers'] as int,
      sex: map['sex']?.map((item) => VKStatsSexAge.fromMap(item)),
      sexAge: map['sex_age']?.map((item) => VKStatsSexAge.fromMap(item)),
    );
  }
}
