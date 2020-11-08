import '../base/vk_base_bool_int.dart';
import '../base/vk_base_property_exists.dart';
import 'vk_ads_criteria_sex.dart';

class VKAdsCriteria {
  /// Age from.
  final int ageFrom;

  /// Age to.
  final int ageTo;

  /// Apps IDs.
  final String apps;

  /// Apps IDs to except.
  final String appsNot;

  /// Days to birthday.
  final int birthday;

  /// Cities IDs.
  final String cities;

  /// Cities IDs to except.
  final String citiesNot;

  /// Country ID.
  final int country;

  /// Districts IDs.
  final String districts;

  /// Communities IDs.
  final String groups;

  /// Interests categories IDs.
  final String interestCategories;

  /// Interests.
  final String interests;

  /// Information whether the user has proceeded VK payments before.
  final VKBaseBoolInt paying;

  /// Positions IDs.
  final String positions;

  /// Religions IDs.
  final String religions;

  /// Retargeting groups IDs.
  final String retargetingGroups;

  /// Retargeting groups IDs to except.
  final String retargetingGroupsNot;

  /// School graduation year from.
  final int schoolFrom;

  /// School graduation year to.
  final int schoolTo;

  /// Schools IDs.
  final String schools;

  final VKAdsCriteriaSex sex;

  /// Stations IDs.
  final String stations;

  /// Relationship statuses.
  final String statuses;

  /// Streets IDs.
  final String streets;

  /// Travellers only.
  final VKBasePropertyExists travellers;

  /// University graduation year from.
  final int uniFrom;

  /// University graduation year to.
  final int uniTo;

  /// Browsers.
  final String userBrowsers;

  /// Devices.
  final String userDevices;

  /// Operating systems.
  final String userOs;

  const VKAdsCriteria({
    this.ageFrom,
    this.ageTo,
    this.apps,
    this.appsNot,
    this.birthday,
    this.cities,
    this.citiesNot,
    this.country,
    this.districts,
    this.groups,
    this.interestCategories,
    this.interests,
    this.paying,
    this.positions,
    this.religions,
    this.retargetingGroups,
    this.retargetingGroupsNot,
    this.schoolFrom,
    this.schoolTo,
    this.schools,
    this.sex,
    this.stations,
    this.statuses,
    this.streets,
    this.travellers,
    this.uniFrom,
    this.uniTo,
    this.userBrowsers,
    this.userDevices,
    this.userOs,
  })  : assert(ageFrom == null || ageFrom >= 0),
        assert(ageTo == null || ageTo >= 0),
        assert(country == null || country >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'age_from': ageFrom,
      'age_to': ageTo,
      'apps': apps,
      'apps_not': appsNot,
      'birthday': birthday,
      'cities': cities,
      'cities_not': citiesNot,
      'country': country,
      'districts': districts,
      'groups': groups,
      'interest_categories': interestCategories,
      'interests': interests,
      'paying': paying?.value,
      'positions': positions,
      'religions': religions,
      'retargeting_groups': retargetingGroups,
      'retargeting_groups_not': retargetingGroupsNot,
      'school_from': schoolFrom,
      'school_to': schoolTo,
      'schools': schools,
      'sex': sex?.value,
      'stations': stations,
      'statuses': statuses,
      'streets': streets,
      'travellers': travellers?.value,
      'uni_from': uniFrom,
      'uni_to': uniTo,
      'user_browsers': userBrowsers,
      'user_devices': userDevices,
      'user_os': userOs,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsCriteria.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsCriteria(
      ageFrom: map['age_from'] as int,
      ageTo: map['age_to'] as int,
      apps: map['apps'] as String,
      appsNot: map['apps_not'] as String,
      birthday: map['birthday'] as int,
      cities: map['cities'] as String,
      citiesNot: map['cities_not'] as String,
      country: map['country'] as int,
      districts: map['districts'] as String,
      groups: map['groups'] as String,
      interestCategories: map['interest_categories'] as String,
      interests: map['interests'] as String,
      paying: VKBaseBoolInt(map['paying']),
      positions: map['positions'] as String,
      religions: map['religions'] as String,
      retargetingGroups: map['retargeting_groups'] as String,
      retargetingGroupsNot: map['retargeting_groups_not'] as String,
      schoolFrom: map['school_from'] as int,
      schoolTo: map['school_to'] as int,
      schools: map['schools'] as String,
      sex: VKAdsCriteriaSex(map['sex']),
      stations: map['stations'] as String,
      statuses: map['statuses'] as String,
      streets: map['streets'] as String,
      travellers: VKBasePropertyExists(map['travellers']),
      uniFrom: map['uni_from'] as int,
      uniTo: map['uni_to'] as int,
      userBrowsers: map['user_browsers'] as String,
      userDevices: map['user_devices'] as String,
      userOs: map['user_os'] as String,
    );
  }
}
