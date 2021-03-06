import 'package:meta/meta.dart';

import '../audio/vk_audio_audio.dart';
import '../base/vk_base_bool_int.dart';
import '../base/vk_base_city.dart';
import '../base/vk_base_country.dart';
import '../base/vk_base_sex.dart';
import '../users/vk_users_personal.dart';
import '../users/vk_users_user_connections.dart';
import '../users/vk_users_user_min.dart';
import '../users/vk_users_user_relation.dart';
import 'vk_account_name_request.dart';
import 'vk_account_user_settings_interests.dart';

class VKAccountUserSettings {
  /// Returns if a profile is deleted or blocked.
  final String deactivated;

  /// User first name.
  final String firstName;

  /// Returns if a profile is hidden..
  final int hidden;

  /// User ID.
  final int id;

  /// User last name.
  final String lastName;

  final bool canAccessClosed;

  final bool isClosed;

  final VKUsersUserConnections connections;

  /// User's date of birth.
  final String bdate;

  /// Information whether user's birthdate are hidden.
  final int bdateVisibility;

  final VKBaseCity city;

  final VKBaseCountry country;

  /// User's hometown.
  final String homeTown;

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

  /// URL of square photo of the user with 200 pixels in width.
  final String photo200;

  /// flag about service account.
  final bool isServiceAccount;

  const VKAccountUserSettings({
    this.deactivated,
    @required this.firstName,
    this.hidden,
    @required this.id,
    @required this.lastName,
    this.canAccessClosed,
    this.isClosed,
    this.connections,
    this.bdate,
    this.bdateVisibility,
    this.city,
    this.country,
    @required this.homeTown,
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
    this.photo200,
    this.isServiceAccount,
  }) : assert(bdateVisibility == null || bdateVisibility >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deactivated': deactivated,
      'first_name': firstName,
      'hidden': hidden,
      'id': id,
      'last_name': lastName,
      'can_access_closed': canAccessClosed,
      'is_closed': isClosed,
      'connections': connections?.toMap(),
      'bdate': bdate,
      'bdate_visibility': bdateVisibility,
      'city': city?.toMap(),
      'country': country?.toMap(),
      'home_town': homeTown,
      'maiden_name': maidenName,
      'name_request': nameRequest?.toMap(),
      'personal': personal?.toMap(),
      'phone': phone,
      'relation': relation?.value,
      'relation_partner': relationPartner?.toMap(),
      'relation_pending': relationPending?.value,
      'relation_requests': relationRequests
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'screen_name': screenName,
      'sex': sex?.value,
      'status': status,
      'status_audio': statusAudio?.toMap(),
      'interests': interests?.toMap(),
      'languages': languages,
      'photo_200': photo200,
      'is_service_account': isServiceAccount,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAccountUserSettings.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAccountUserSettings(
      deactivated: map['deactivated'] as String,
      firstName: map['first_name'] as String,
      hidden: map['hidden'] as int,
      id: map['id'] as int,
      lastName: map['last_name'] as String,
      canAccessClosed: map['can_access_closed'] as bool,
      isClosed: map['is_closed'] as bool,
      connections: VKUsersUserConnections.fromMap(map['connections']),
      bdate: map['bdate'] as String,
      bdateVisibility: map['bdate_visibility'] as int,
      city: VKBaseCity.fromMap(map['city']),
      country: VKBaseCountry.fromMap(map['country']),
      homeTown: map['home_town'] as String,
      maidenName: map['maiden_name'] as String,
      nameRequest: VKAccountNameRequest.fromMap(map['name_request']),
      personal: VKUsersPersonal.fromMap(map['personal']),
      phone: map['phone'] as String,
      relation: VKUsersUserRelation(map['relation']),
      relationPartner: VKUsersUserMin.fromMap(map['relation_partner']),
      relationPending: VKBaseBoolInt(map['relation_pending']),
      relationRequests: map['relation_requests']
          ?.map<VKUsersUserMin>(
            (item) => VKUsersUserMin.fromMap(item),
          )
          ?.toList(),
      screenName: map['screen_name'] as String,
      sex: VKBaseSex(map['sex']),
      status: map['status'] as String,
      statusAudio: VKAudioAudio.fromMap(map['status_audio']),
      interests: VKAccountUserSettingsInterests.fromMap(map['interests']),
      languages: map['languages'] as List<String>,
      photo200: map['photo_200'] as String,
      isServiceAccount: map['is_service_account'] as bool,
    );
  }
}
