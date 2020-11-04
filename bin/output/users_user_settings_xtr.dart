import 'users_user_connections.dart';
import 'base_city.dart';
import 'base_country.dart';
import 'account_name_request.dart';
import 'users_personal.dart';
import 'users_user_relation.dart';
import 'users_user_min.dart';
import 'base_bool_int.dart';
import 'base_sex.dart';
import 'audio_audio.dart';
import 'account_user_settings_interests.dart';
import 'package:meta/meta.dart';

class UsersUserSettingsXtr {
  final UsersUserConnections connections;

  /// User's date of birth.
  final String bdate;

  /// Information whether user's birthdate are hidden.
  final int bdateVisibility;

  final BaseCity city;

  final BaseCountry country;

  /// User first name.
  final String firstName;

  /// User's hometown.
  final String homeTown;

  /// User last name.
  final String lastName;

  /// User maiden name.
  final String maidenName;

  final AccountNameRequest nameRequest;

  final UsersPersonal personal;

  /// User phone number with some hidden digits.
  final String phone;

  /// User relationship status.
  final UsersUserRelation relation;

  final UsersUserMin relationPartner;

  /// Information whether relation status is pending.
  final BaseBoolInt relationPending;

  final List<UsersUserMin> relationRequests;

  /// Domain name of the user's page.
  final String screenName;

  /// User sex.
  final BaseSex sex;

  /// User status.
  final String status;

  final AudioAudio statusAudio;

  final AccountUserSettingsInterests interests;

  final List<String> languages;

  const UsersUserSettingsXtr({
    this.connections,
    this.bdate,
    this.bdateVisibility,
    this.city,
    this.country,
    this.firstName,
    @required this.homeTown,
    this.lastName,
    this.maidenName,
    this.nameRequest,
    this.personal,
    this.phone,
    this.relation,
    this.relationPartner,
    this.relationPending,
    this.relationRequests,
    this.screenName,
    this.sex,
    @required this.status,
    this.statusAudio,
    this.interests,
    this.languages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connections': connections?.toMap(),
      'bdate': bdate,
      'bdate_visibility': bdateVisibility,
      'city': city?.toMap(),
      'country': country?.toMap(),
      'first_name': firstName,
      'home_town': homeTown,
      'last_name': lastName,
      'maiden_name': maidenName,
      'name_request': nameRequest?.toMap(),
      'personal': personal?.toMap(),
      'phone': phone,
      'relation': relation?.value,
      'relation_partner': relationPartner?.toMap(),
      'relation_pending': relationPending?.value,
      'relation_requests': relationRequests?.map((item) => item?.toMap()),
      'screen_name': screenName,
      'sex': sex?.value,
      'status': status,
      'status_audio': statusAudio?.toMap(),
      'interests': interests?.toMap(),
      'languages': languages,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory UsersUserSettingsXtr.fromMap(Map<String, dynamic> map) {
    return UsersUserSettingsXtr(
      connections: UsersUserConnections.fromMap(map['connections']),
      bdate: map['bdate'] as String,
      bdateVisibility: map['bdate_visibility'] as int,
      city: BaseCity.fromMap(map['city']),
      country: BaseCountry.fromMap(map['country']),
      firstName: map['first_name'] as String,
      homeTown: map['home_town'] as String,
      lastName: map['last_name'] as String,
      maidenName: map['maiden_name'] as String,
      nameRequest: AccountNameRequest.fromMap(map['name_request']),
      personal: UsersPersonal.fromMap(map['personal']),
      phone: map['phone'] as String,
      relation: UsersUserRelation(map['relation']),
      relationPartner: UsersUserMin.fromMap(map['relation_partner']),
      relationPending: BaseBoolInt(map['relation_pending']),
      relationRequests:
          map['relation_requests']?.map((item) => UsersUserMin.fromMap(item)),
      screenName: map['screen_name'] as String,
      sex: BaseSex(map['sex']),
      status: map['status'] as String,
      statusAudio: AudioAudio.fromMap(map['status_audio']),
      interests: AccountUserSettingsInterests.fromMap(map['interests']),
      languages: map['languages'] as List<String>,
    );
  }
}
