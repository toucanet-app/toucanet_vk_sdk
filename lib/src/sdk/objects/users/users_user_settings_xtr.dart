import 'package:meta/meta.dart';

import '../account/account_name_request.dart';
import '../account/account_user_settings_interests.dart';
import '../audio/audio_audio.dart';
import '../base/base_bool_int.dart';
import '../base/base_city.dart';
import '../base/base_country.dart';
import '../base/base_sex.dart';
import 'users_personal.dart';
import 'users_user_connections.dart';
import 'users_user_min.dart';
import 'users_user_relation.dart';

class VKUsersUserSettingsXtr {
  final VKUsersUserConnections connections;

  /// User's date of birth.
  final String bdate;

  /// Information whether user's birthdate are hidden.
  final int bdateVisibility;

  final VKBaseCity city;

  final VKBaseCountry country;

  /// User first name.
  final String firstName;

  /// User's hometown.
  final String homeTown;

  /// User last name.
  final String lastName;

  /// User maiden name.
  final String maidenName;

  final VKAccountNameRequest nameRequest;

  final VKUsersPersonal personal;

  /// User phone number with some hidden digits.
  final String phone;

  /// User relationship status.
  final VKUsersUserRelation relation;

  final VKUsersUserMin relationPartner;

  /// Information whether relation status is pending.
  final VKBaseBoolInt relationPending;

  final List<VKUsersUserMin> relationRequests;

  /// Domain name of the user's page.
  final String screenName;

  /// User sex.
  final VKBaseSex sex;

  /// User status.
  final String status;

  final VKAudioAudio statusAudio;

  final VKAccountUserSettingsInterests interests;

  final List<String> languages;

  const VKUsersUserSettingsXtr({
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
  }) : assert(bdateVisibility >= 0);

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

  factory VKUsersUserSettingsXtr.fromMap(Map<String, dynamic> map) {
    return VKUsersUserSettingsXtr(
      connections: VKUsersUserConnections.fromMap(map['connections']),
      bdate: map['bdate'] as String,
      bdateVisibility: map['bdate_visibility'] as int,
      city: VKBaseCity.fromMap(map['city']),
      country: VKBaseCountry.fromMap(map['country']),
      firstName: map['first_name'] as String,
      homeTown: map['home_town'] as String,
      lastName: map['last_name'] as String,
      maidenName: map['maiden_name'] as String,
      nameRequest: VKAccountNameRequest.fromMap(map['name_request']),
      personal: VKUsersPersonal.fromMap(map['personal']),
      phone: map['phone'] as String,
      relation: VKUsersUserRelation(map['relation']),
      relationPartner: VKUsersUserMin.fromMap(map['relation_partner']),
      relationPending: VKBaseBoolInt(map['relation_pending']),
      relationRequests:
          map['relation_requests']?.map((item) => VKUsersUserMin.fromMap(item)),
      screenName: map['screen_name'] as String,
      sex: VKBaseSex(map['sex']),
      status: map['status'] as String,
      statusAudio: VKAudioAudio.fromMap(map['status_audio']),
      interests: VKAccountUserSettingsInterests.fromMap(map['interests']),
      languages: map['languages'] as List<String>,
    );
  }
}
