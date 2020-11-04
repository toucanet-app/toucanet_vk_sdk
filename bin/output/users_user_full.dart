import 'base_sex.dart';
import 'users_online_info.dart';
import 'base_bool_int.dart';
import 'friends_friend_status_status.dart';
import 'friends_requests_mutual.dart';
import 'base_city.dart';
import 'base_country.dart';
import 'owner_state.dart';
import 'audio_audio.dart';
import 'users_last_seen.dart';
import 'users_exports.dart';
import 'base_crop_photo.dart';
import 'users_occupation.dart';
import 'users_career.dart';
import 'users_military.dart';
import 'users_user_relation.dart';
import 'users_user_min.dart';
import 'users_personal.dart';
import 'users_university.dart';
import 'users_school.dart';
import 'users_relative.dart';
import 'package:meta/meta.dart';

class UsersUserFull {
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

  /// User sex.
  final BaseSex sex;

  /// Domain name of the user's page.
  final String screenName;

  /// URL of square photo of the user with 50 pixels in width.
  final String photo50;

  /// URL of square photo of the user with 100 pixels in width.
  final String photo100;

  final UsersOnlineInfo onlineInfo;

  /// Information whether the user is online.
  final BaseBoolInt online;

  /// Information whether the user is online in mobile site or application.
  final BaseBoolInt onlineMobile;

  /// Application ID.
  final int onlineApp;

  /// Information whether the user is verified.
  final BaseBoolInt verified;

  /// Information whether the user has a "fire" pictogram..
  final BaseBoolInt trending;

  final FriendsFriendStatusStatus friendStatus;

  final FriendsRequestsMutual mutual;

  /// User's first name in nominative case.
  final String firstNameNom;

  /// User's first name in genitive case.
  final String firstNameGen;

  /// User's first name in dative case.
  final String firstNameDat;

  /// User's first name in accusative case.
  final String firstNameAcc;

  /// User's first name in instrumental case.
  final String firstNameIns;

  /// User's first name in prepositional case.
  final String firstNameAbl;

  /// User's last name in nominative case.
  final String lastNameNom;

  /// User's last name in genitive case.
  final String lastNameGen;

  /// User's last name in dative case.
  final String lastNameDat;

  /// User's last name in accusative case.
  final String lastNameAcc;

  /// User's last name in instrumental case.
  final String lastNameIns;

  /// User's last name in prepositional case.
  final String lastNameAbl;

  /// User nickname.
  final String nickname;

  /// User maiden name.
  final String maidenName;

  /// Domain name of the user's page.
  final String domain;

  /// User's date of birth.
  final String bdate;

  final BaseCity city;

  final BaseCountry country;

  /// User's timezone.
  final int timezone;

  final OwnerState ownerState;

  /// URL of square photo of the user with 200 pixels in width.
  final String photo200;

  /// URL of square photo of the user with maximum width.
  final String photoMax;

  /// URL of user's photo with 200 pixels in width.
  final String photo200Orig;

  /// URL of user's photo with 400 pixels in width.
  final String photo400Orig;

  /// URL of user's photo of maximum size.
  final String photoMaxOrig;

  /// ID of the user's main photo.
  final String photoId;

  /// Information whether the user has main photo.
  final BaseBoolInt hasPhoto;

  /// Information whether the user specified his phone number.
  final BaseBoolInt hasMobile;

  /// Information whether the user is a friend of current user.
  final BaseBoolInt isFriend;

  /// Information whether current user can comment wall posts.
  final BaseBoolInt wallComments;

  /// Information whether current user can post on the user's wall.
  final BaseBoolInt canPost;

  /// Information whether current user can see other users' audio on the wall.
  final BaseBoolInt canSeeAllPosts;

  /// Information whether current user can see the user's audio.
  final BaseBoolInt canSeeAudio;

  /// Information whether current user can write private message.
  final BaseBoolInt canWritePrivateMessage;

  /// Information whether current user can send a friend request.
  final BaseBoolInt canSendFriendRequest;

  /// Information whether current user can be invited to the community.
  final bool canBeInvitedGroup;

  /// User's mobile phone number.
  final String mobilePhone;

  /// User's additional phone number.
  final String homePhone;

  /// User's website.
  final String site;

  final AudioAudio statusAudio;

  /// User's status.
  final String status;

  /// User's status.
  final String activity;

  final UsersLastSeen lastSeen;

  final UsersExports exports;

  final BaseCropPhoto cropPhoto;

  /// Number of user's followers.
  final int followersCount;

  /// User level in live streams achievements.
  final int videoLiveLevel;

  /// Number of user's live streams.
  final int videoLiveCount;

  /// Information whether current user is in the requested user's blacklist..
  final BaseBoolInt blacklisted;

  /// Information whether the requested user is in current user's blacklist.
  final BaseBoolInt blacklistedByMe;

  /// Information whether the requested user is in faves of current user.
  final BaseBoolInt isFavorite;

  /// Information whether the requested user is hidden from current user's newsfeed.
  final BaseBoolInt isHiddenFromFeed;

  /// Number of common friends with current user.
  final int commonCount;

  final UsersOccupation occupation;

  final List<UsersCareer> career;

  final List<UsersMilitary> military;

  /// University ID.
  final int university;

  /// University name.
  final String universityName;

  /// Faculty ID.
  final int faculty;

  /// Faculty name.
  final String facultyName;

  /// Graduation year.
  final int graduation;

  /// Education form.
  final String educationForm;

  /// User's education status.
  final String educationStatus;

  /// User hometown.
  final String homeTown;

  /// User relationship status.
  final UsersUserRelation relation;

  final UsersUserMin relationPartner;

  final UsersPersonal personal;

  final List<UsersUniversity> universities;

  final List<UsersSchool> schools;

  final List<UsersRelative> relatives;

  /// Information whether current user is subscribed to podcasts.
  final bool isSubscribedPodcasts;

  /// Owner in whitelist or not.
  final bool canSubscribePodcasts;

  /// Can subscribe to wall.
  final bool canSubscribePosts;

  const UsersUserFull({
    this.deactivated,
    @required this.firstName,
    this.hidden,
    @required this.id,
    @required this.lastName,
    this.canAccessClosed,
    this.isClosed,
    this.sex,
    this.screenName,
    this.photo50,
    this.photo100,
    this.onlineInfo,
    this.online,
    this.onlineMobile,
    this.onlineApp,
    this.verified,
    this.trending,
    this.friendStatus,
    this.mutual,
    this.firstNameNom,
    this.firstNameGen,
    this.firstNameDat,
    this.firstNameAcc,
    this.firstNameIns,
    this.firstNameAbl,
    this.lastNameNom,
    this.lastNameGen,
    this.lastNameDat,
    this.lastNameAcc,
    this.lastNameIns,
    this.lastNameAbl,
    this.nickname,
    this.maidenName,
    this.domain,
    this.bdate,
    this.city,
    this.country,
    this.timezone,
    this.ownerState,
    this.photo200,
    this.photoMax,
    this.photo200Orig,
    this.photo400Orig,
    this.photoMaxOrig,
    this.photoId,
    this.hasPhoto,
    this.hasMobile,
    this.isFriend,
    this.wallComments,
    this.canPost,
    this.canSeeAllPosts,
    this.canSeeAudio,
    this.canWritePrivateMessage,
    this.canSendFriendRequest,
    this.canBeInvitedGroup,
    this.mobilePhone,
    this.homePhone,
    this.site,
    this.statusAudio,
    this.status,
    this.activity,
    this.lastSeen,
    this.exports,
    this.cropPhoto,
    this.followersCount,
    this.videoLiveLevel,
    this.videoLiveCount,
    this.blacklisted,
    this.blacklistedByMe,
    this.isFavorite,
    this.isHiddenFromFeed,
    this.commonCount,
    this.occupation,
    this.career,
    this.military,
    this.university,
    this.universityName,
    this.faculty,
    this.facultyName,
    this.graduation,
    this.educationForm,
    this.educationStatus,
    this.homeTown,
    this.relation,
    this.relationPartner,
    this.personal,
    this.universities,
    this.schools,
    this.relatives,
    this.isSubscribedPodcasts,
    this.canSubscribePodcasts,
    this.canSubscribePosts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deactivated': deactivated,
      'first_name': firstName,
      'hidden': hidden,
      'id': id,
      'last_name': lastName,
      'can_access_closed': canAccessClosed,
      'is_closed': isClosed,
      'sex': sex?.value,
      'screen_name': screenName,
      'photo_50': photo50,
      'photo_100': photo100,
      'online_info': onlineInfo?.toMap(),
      'online': online?.value,
      'online_mobile': onlineMobile?.value,
      'online_app': onlineApp,
      'verified': verified?.value,
      'trending': trending?.value,
      'friend_status': friendStatus?.value,
      'mutual': mutual?.toMap(),
      'first_name_nom': firstNameNom,
      'first_name_gen': firstNameGen,
      'first_name_dat': firstNameDat,
      'first_name_acc': firstNameAcc,
      'first_name_ins': firstNameIns,
      'first_name_abl': firstNameAbl,
      'last_name_nom': lastNameNom,
      'last_name_gen': lastNameGen,
      'last_name_dat': lastNameDat,
      'last_name_acc': lastNameAcc,
      'last_name_ins': lastNameIns,
      'last_name_abl': lastNameAbl,
      'nickname': nickname,
      'maiden_name': maidenName,
      'domain': domain,
      'bdate': bdate,
      'city': city?.toMap(),
      'country': country?.toMap(),
      'timezone': timezone,
      'owner_state': ownerState?.toMap(),
      'photo_200': photo200,
      'photo_max': photoMax,
      'photo_200_orig': photo200Orig,
      'photo_400_orig': photo400Orig,
      'photo_max_orig': photoMaxOrig,
      'photo_id': photoId,
      'has_photo': hasPhoto?.value,
      'has_mobile': hasMobile?.value,
      'is_friend': isFriend?.value,
      'wall_comments': wallComments?.value,
      'can_post': canPost?.value,
      'can_see_all_posts': canSeeAllPosts?.value,
      'can_see_audio': canSeeAudio?.value,
      'can_write_private_message': canWritePrivateMessage?.value,
      'can_send_friend_request': canSendFriendRequest?.value,
      'can_be_invited_group': canBeInvitedGroup,
      'mobile_phone': mobilePhone,
      'home_phone': homePhone,
      'site': site,
      'status_audio': statusAudio?.toMap(),
      'status': status,
      'activity': activity,
      'last_seen': lastSeen?.toMap(),
      'exports': exports?.toMap(),
      'crop_photo': cropPhoto?.toMap(),
      'followers_count': followersCount,
      'video_live_level': videoLiveLevel,
      'video_live_count': videoLiveCount,
      'blacklisted': blacklisted?.value,
      'blacklisted_by_me': blacklistedByMe?.value,
      'is_favorite': isFavorite?.value,
      'is_hidden_from_feed': isHiddenFromFeed?.value,
      'common_count': commonCount,
      'occupation': occupation?.toMap(),
      'career': career?.map((item) => item?.toMap()),
      'military': military?.map((item) => item?.toMap()),
      'university': university,
      'university_name': universityName,
      'faculty': faculty,
      'faculty_name': facultyName,
      'graduation': graduation,
      'education_form': educationForm,
      'education_status': educationStatus,
      'home_town': homeTown,
      'relation': relation?.value,
      'relation_partner': relationPartner?.toMap(),
      'personal': personal?.toMap(),
      'universities': universities?.map((item) => item?.toMap()),
      'schools': schools?.map((item) => item?.toMap()),
      'relatives': relatives?.map((item) => item?.toMap()),
      'is_subscribed_podcasts': isSubscribedPodcasts,
      'can_subscribe_podcasts': canSubscribePodcasts,
      'can_subscribe_posts': canSubscribePosts,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory UsersUserFull.fromMap(Map<String, dynamic> map) {
    return UsersUserFull(
      deactivated: map['deactivated'] as String,
      firstName: map['first_name'] as String,
      hidden: map['hidden'] as int,
      id: map['id'] as int,
      lastName: map['last_name'] as String,
      canAccessClosed: map['can_access_closed'] as bool,
      isClosed: map['is_closed'] as bool,
      sex: BaseSex(map['sex']),
      screenName: map['screen_name'] as String,
      photo50: map['photo_50'] as String,
      photo100: map['photo_100'] as String,
      onlineInfo: UsersOnlineInfo.fromMap(map['online_info']),
      online: BaseBoolInt(map['online']),
      onlineMobile: BaseBoolInt(map['online_mobile']),
      onlineApp: map['online_app'] as int,
      verified: BaseBoolInt(map['verified']),
      trending: BaseBoolInt(map['trending']),
      friendStatus: FriendsFriendStatusStatus(map['friend_status']),
      mutual: FriendsRequestsMutual.fromMap(map['mutual']),
      firstNameNom: map['first_name_nom'] as String,
      firstNameGen: map['first_name_gen'] as String,
      firstNameDat: map['first_name_dat'] as String,
      firstNameAcc: map['first_name_acc'] as String,
      firstNameIns: map['first_name_ins'] as String,
      firstNameAbl: map['first_name_abl'] as String,
      lastNameNom: map['last_name_nom'] as String,
      lastNameGen: map['last_name_gen'] as String,
      lastNameDat: map['last_name_dat'] as String,
      lastNameAcc: map['last_name_acc'] as String,
      lastNameIns: map['last_name_ins'] as String,
      lastNameAbl: map['last_name_abl'] as String,
      nickname: map['nickname'] as String,
      maidenName: map['maiden_name'] as String,
      domain: map['domain'] as String,
      bdate: map['bdate'] as String,
      city: BaseCity.fromMap(map['city']),
      country: BaseCountry.fromMap(map['country']),
      timezone: map['timezone'] as int,
      ownerState: OwnerState.fromMap(map['owner_state']),
      photo200: map['photo_200'] as String,
      photoMax: map['photo_max'] as String,
      photo200Orig: map['photo_200_orig'] as String,
      photo400Orig: map['photo_400_orig'] as String,
      photoMaxOrig: map['photo_max_orig'] as String,
      photoId: map['photo_id'] as String,
      hasPhoto: BaseBoolInt(map['has_photo']),
      hasMobile: BaseBoolInt(map['has_mobile']),
      isFriend: BaseBoolInt(map['is_friend']),
      wallComments: BaseBoolInt(map['wall_comments']),
      canPost: BaseBoolInt(map['can_post']),
      canSeeAllPosts: BaseBoolInt(map['can_see_all_posts']),
      canSeeAudio: BaseBoolInt(map['can_see_audio']),
      canWritePrivateMessage: BaseBoolInt(map['can_write_private_message']),
      canSendFriendRequest: BaseBoolInt(map['can_send_friend_request']),
      canBeInvitedGroup: map['can_be_invited_group'] as bool,
      mobilePhone: map['mobile_phone'] as String,
      homePhone: map['home_phone'] as String,
      site: map['site'] as String,
      statusAudio: AudioAudio.fromMap(map['status_audio']),
      status: map['status'] as String,
      activity: map['activity'] as String,
      lastSeen: UsersLastSeen.fromMap(map['last_seen']),
      exports: UsersExports.fromMap(map['exports']),
      cropPhoto: BaseCropPhoto.fromMap(map['crop_photo']),
      followersCount: map['followers_count'] as int,
      videoLiveLevel: map['video_live_level'] as int,
      videoLiveCount: map['video_live_count'] as int,
      blacklisted: BaseBoolInt(map['blacklisted']),
      blacklistedByMe: BaseBoolInt(map['blacklisted_by_me']),
      isFavorite: BaseBoolInt(map['is_favorite']),
      isHiddenFromFeed: BaseBoolInt(map['is_hidden_from_feed']),
      commonCount: map['common_count'] as int,
      occupation: UsersOccupation.fromMap(map['occupation']),
      career: map['career']?.map((item) => UsersCareer.fromMap(item)),
      military: map['military']?.map((item) => UsersMilitary.fromMap(item)),
      university: map['university'] as int,
      universityName: map['university_name'] as String,
      faculty: map['faculty'] as int,
      facultyName: map['faculty_name'] as String,
      graduation: map['graduation'] as int,
      educationForm: map['education_form'] as String,
      educationStatus: map['education_status'] as String,
      homeTown: map['home_town'] as String,
      relation: UsersUserRelation(map['relation']),
      relationPartner: UsersUserMin.fromMap(map['relation_partner']),
      personal: UsersPersonal.fromMap(map['personal']),
      universities: map['universities']?.map((item) => UsersUniversity.fromMap(item)),
      schools: map['schools']?.map((item) => UsersSchool.fromMap(item)),
      relatives: map['relatives']?.map((item) => UsersRelative.fromMap(item)),
      isSubscribedPodcasts: map['is_subscribed_podcasts'] as bool,
      canSubscribePodcasts: map['can_subscribe_podcasts'] as bool,
      canSubscribePosts: map['can_subscribe_posts'] as bool,
    );
  }
}
