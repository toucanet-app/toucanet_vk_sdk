import 'ads_stats_age.dart';
import 'ads_stats_cities.dart';
import 'ads_stats_sex.dart';
import 'ads_stats_sex_age.dart';

class AdsDemostatsFormat {
  final List<AdsStatsAge> age;

  final List<AdsStatsCities> cities;

  /// Day as YYYY-MM-DD.
  final String day;

  /// Month as YYYY-MM.
  final String month;

  /// 1 if period=overall.
  final int overall;

  final List<AdsStatsSex> sex;

  final List<AdsStatsSexAge> sexAge;

  const AdsDemostatsFormat({
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
      'age': age?.map((item) => item?.toMap()),
      'cities': cities?.map((item) => item?.toMap()),
      'day': day,
      'month': month,
      'overall': overall,
      'sex': sex?.map((item) => item?.toMap()),
      'sex_age': sexAge?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AdsDemostatsFormat.fromMap(Map<String, dynamic> map) {
    return AdsDemostatsFormat(
      age: map['age']?.map((item) => AdsStatsAge.fromMap(item)),
      cities: map['cities']?.map((item) => AdsStatsCities.fromMap(item)),
      day: map['day'] as String,
      month: map['month'] as String,
      overall: map['overall'] as int,
      sex: map['sex']?.map((item) => AdsStatsSex.fromMap(item)),
      sexAge: map['sex_age']?.map((item) => AdsStatsSexAge.fromMap(item)),
    );
  }
}
