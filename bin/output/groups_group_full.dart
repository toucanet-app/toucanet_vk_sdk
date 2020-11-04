import 'groups_group_admin_level.dart';
import 'base_bool_int.dart';
import 'groups_group_is_closed.dart';
import 'groups_group_type.dart';
import 'groups_market_info.dart';
import 'groups_group_full_member_status.dart';
import 'base_object.dart';
import 'base_country.dart';
import 'groups_counters_group.dart';
import 'groups_cover.dart';
import 'base_crop_photo.dart';
import 'groups_links_item.dart';
import 'groups_contacts_item.dart';
import 'groups_group_full_main_section.dart';
import 'groups_online_status.dart';
import 'groups_group_full_age_limits.dart';
import 'groups_group_ban_info.dart';
import 'groups_addresses_info.dart';
import 'groups_live_covers.dart';

class GroupsGroupFull {
  final GroupsGroupAdminLevel adminLevel;

  /// Information whether community is banned.
  final String deactivated;

  /// Finish date in Unixtime format.
  final int finishDate;

  /// Community ID.
  final int id;

  /// Information whether current user is administrator.
  final BaseBoolInt isAdmin;

  /// Information whether current user is advertiser.
  final BaseBoolInt isAdvertiser;

  final GroupsGroupIsClosed isClosed;

  /// Information whether current user is member.
  final BaseBoolInt isMember;

  /// Community name.
  final String name;

  /// URL of square photo of the community with 100 pixels in width.
  final String photo100;

  /// URL of square photo of the community with 200 pixels in width.
  final String photo200;

  /// URL of square photo of the community with 50 pixels in width.
  final String photo50;

  /// Domain of the community page.
  final String screenName;

  /// Start date in Unixtime format.
  final int startDate;

  final GroupsGroupType type;

  final GroupsMarketInfo market;

  /// Current user's member status.
  final GroupsGroupFullMemberStatus memberStatus;

  /// Information whether community is adult.
  final BaseBoolInt isAdult;

  /// Information whether community is hidden from current user's newsfeed.
  final BaseBoolInt isHiddenFromFeed;

  /// Information whether community is in faves.
  final BaseBoolInt isFavorite;

  /// Information whether current user is subscribed.
  final BaseBoolInt isSubscribed;

  final BaseObject city;

  final BaseCountry country;

  /// Information whether community is verified.
  final BaseBoolInt verified;

  /// Community description.
  final String description;

  /// Community's main wiki page title.
  final String wikiPage;

  /// Community members number.
  final int membersCount;

  /// Community level live streams achievements.
  final int videoLiveLevel;

  /// Number of community's live streams.
  final int videoLiveCount;

  final GroupsCountersGroup counters;

  final GroupsCover cover;

  /// Information whether current user can post on community's wall.
  final BaseBoolInt canPost;

  /// Information whether current user can see all posts on community's wall.
  final BaseBoolInt canSeeAllPosts;

  /// Type of group, start date of event or category of public page.
  final String activity;

  /// Fixed post ID.
  final int fixedPost;

  /// Information whether current user can create topic.
  final BaseBoolInt canCreateTopic;

  /// Information whether current user can upload doc.
  final BaseBoolInt canUploadDoc;

  /// Information whether current user can upload story.
  final BaseBoolInt canUploadStory;

  /// Information whether current user can upload video.
  final BaseBoolInt canUploadVideo;

  /// Information whether community has photo.
  final BaseBoolInt hasPhoto;

  /// Данные о точках, по которым вырезаны профильная и миниатюрная фотографии сообщества.
  final BaseCropPhoto cropPhoto;

  /// Community status.
  final String status;

  /// Community's main photo album ID.
  final int mainAlbumId;

  final List<GroupsLinksItem> links;

  final List<GroupsContactsItem> contacts;

  /// Information about wall status in community.
  final int wall;

  /// Community's website.
  final String site;

  final GroupsGroupFullMainSection mainSection;

  /// Information whether the community has a "fire" pictogram..
  final BaseBoolInt trending;

  /// Information whether current user can send a message to community.
  final BaseBoolInt canMessage;

  /// Information whether community can send a message to current user.
  final BaseBoolInt isMessagesBlocked;

  /// Information whether community can send notifications by phone number to current user.
  final BaseBoolInt canSendNotify;

  /// Status of replies in community messages.
  final GroupsOnlineStatus onlineStatus;

  /// Information whether age limit.
  final GroupsGroupFullAgeLimits ageLimits;

  /// User ban info.
  final GroupsGroupBanInfo banInfo;

  /// Information whether community has installed market app.
  final bool hasMarketApp;

  /// Info about addresses in groups.
  final GroupsAddressesInfo addresses;

  /// Information whether current user is subscribed to podcasts.
  final bool isSubscribedPodcasts;

  /// Owner in whitelist or not.
  final bool canSubscribePodcasts;

  /// Can subscribe to wall.
  final bool canSubscribePosts;

  /// Live covers state.
  final GroupsLiveCovers liveCovers;

  const GroupsGroupFull({
    this.adminLevel,
    this.deactivated,
    this.finishDate,
    this.id,
    this.isAdmin,
    this.isAdvertiser,
    this.isClosed,
    this.isMember,
    this.name,
    this.photo100,
    this.photo200,
    this.photo50,
    this.screenName,
    this.startDate,
    this.type,
    this.market,
    this.memberStatus,
    this.isAdult,
    this.isHiddenFromFeed,
    this.isFavorite,
    this.isSubscribed,
    this.city,
    this.country,
    this.verified,
    this.description,
    this.wikiPage,
    this.membersCount,
    this.videoLiveLevel,
    this.videoLiveCount,
    this.counters,
    this.cover,
    this.canPost,
    this.canSeeAllPosts,
    this.activity,
    this.fixedPost,
    this.canCreateTopic,
    this.canUploadDoc,
    this.canUploadStory,
    this.canUploadVideo,
    this.hasPhoto,
    this.cropPhoto,
    this.status,
    this.mainAlbumId,
    this.links,
    this.contacts,
    this.wall,
    this.site,
    this.mainSection,
    this.trending,
    this.canMessage,
    this.isMessagesBlocked,
    this.canSendNotify,
    this.onlineStatus,
    this.ageLimits,
    this.banInfo,
    this.hasMarketApp,
    this.addresses,
    this.isSubscribedPodcasts,
    this.canSubscribePodcasts,
    this.canSubscribePosts,
    this.liveCovers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admin_level': adminLevel?.value,
      'deactivated': deactivated,
      'finish_date': finishDate,
      'id': id,
      'is_admin': isAdmin?.value,
      'is_advertiser': isAdvertiser?.value,
      'is_closed': isClosed?.value,
      'is_member': isMember?.value,
      'name': name,
      'photo_100': photo100,
      'photo_200': photo200,
      'photo_50': photo50,
      'screen_name': screenName,
      'start_date': startDate,
      'type': type?.value,
      'market': market?.toMap(),
      'member_status': memberStatus?.value,
      'is_adult': isAdult?.value,
      'is_hidden_from_feed': isHiddenFromFeed?.value,
      'is_favorite': isFavorite?.value,
      'is_subscribed': isSubscribed?.value,
      'city': city?.toMap(),
      'country': country?.toMap(),
      'verified': verified?.value,
      'description': description,
      'wiki_page': wikiPage,
      'members_count': membersCount,
      'video_live_level': videoLiveLevel,
      'video_live_count': videoLiveCount,
      'counters': counters?.toMap(),
      'cover': cover?.toMap(),
      'can_post': canPost?.value,
      'can_see_all_posts': canSeeAllPosts?.value,
      'activity': activity,
      'fixed_post': fixedPost,
      'can_create_topic': canCreateTopic?.value,
      'can_upload_doc': canUploadDoc?.value,
      'can_upload_story': canUploadStory?.value,
      'can_upload_video': canUploadVideo?.value,
      'has_photo': hasPhoto?.value,
      'crop_photo': cropPhoto?.toMap(),
      'status': status,
      'main_album_id': mainAlbumId,
      'links': links?.map((item) => item?.toMap()),
      'contacts': contacts?.map((item) => item?.toMap()),
      'wall': wall,
      'site': site,
      'main_section': mainSection?.value,
      'trending': trending?.value,
      'can_message': canMessage?.value,
      'is_messages_blocked': isMessagesBlocked?.value,
      'can_send_notify': canSendNotify?.value,
      'online_status': onlineStatus?.toMap(),
      'age_limits': ageLimits?.value,
      'ban_info': banInfo?.toMap(),
      'has_market_app': hasMarketApp,
      'addresses': addresses?.toMap(),
      'is_subscribed_podcasts': isSubscribedPodcasts,
      'can_subscribe_podcasts': canSubscribePodcasts,
      'can_subscribe_posts': canSubscribePosts,
      'live_covers': liveCovers?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory GroupsGroupFull.fromMap(Map<String, dynamic> map) {
    return GroupsGroupFull(
      adminLevel: GroupsGroupAdminLevel(map['admin_level']),
      deactivated: map['deactivated'] as String,
      finishDate: map['finish_date'] as int,
      id: map['id'] as int,
      isAdmin: BaseBoolInt(map['is_admin']),
      isAdvertiser: BaseBoolInt(map['is_advertiser']),
      isClosed: GroupsGroupIsClosed(map['is_closed']),
      isMember: BaseBoolInt(map['is_member']),
      name: map['name'] as String,
      photo100: map['photo_100'] as String,
      photo200: map['photo_200'] as String,
      photo50: map['photo_50'] as String,
      screenName: map['screen_name'] as String,
      startDate: map['start_date'] as int,
      type: GroupsGroupType(map['type']),
      market: GroupsMarketInfo.fromMap(map['market']),
      memberStatus: GroupsGroupFullMemberStatus(map['member_status']),
      isAdult: BaseBoolInt(map['is_adult']),
      isHiddenFromFeed: BaseBoolInt(map['is_hidden_from_feed']),
      isFavorite: BaseBoolInt(map['is_favorite']),
      isSubscribed: BaseBoolInt(map['is_subscribed']),
      city: BaseObject.fromMap(map['city']),
      country: BaseCountry.fromMap(map['country']),
      verified: BaseBoolInt(map['verified']),
      description: map['description'] as String,
      wikiPage: map['wiki_page'] as String,
      membersCount: map['members_count'] as int,
      videoLiveLevel: map['video_live_level'] as int,
      videoLiveCount: map['video_live_count'] as int,
      counters: GroupsCountersGroup.fromMap(map['counters']),
      cover: GroupsCover.fromMap(map['cover']),
      canPost: BaseBoolInt(map['can_post']),
      canSeeAllPosts: BaseBoolInt(map['can_see_all_posts']),
      activity: map['activity'] as String,
      fixedPost: map['fixed_post'] as int,
      canCreateTopic: BaseBoolInt(map['can_create_topic']),
      canUploadDoc: BaseBoolInt(map['can_upload_doc']),
      canUploadStory: BaseBoolInt(map['can_upload_story']),
      canUploadVideo: BaseBoolInt(map['can_upload_video']),
      hasPhoto: BaseBoolInt(map['has_photo']),
      cropPhoto: BaseCropPhoto.fromMap(map['crop_photo']),
      status: map['status'] as String,
      mainAlbumId: map['main_album_id'] as int,
      links: map['links']?.map((item) => GroupsLinksItem.fromMap(item)),
      contacts: map['contacts']?.map((item) => GroupsContactsItem.fromMap(item)),
      wall: map['wall'] as int,
      site: map['site'] as String,
      mainSection: GroupsGroupFullMainSection(map['main_section']),
      trending: BaseBoolInt(map['trending']),
      canMessage: BaseBoolInt(map['can_message']),
      isMessagesBlocked: BaseBoolInt(map['is_messages_blocked']),
      canSendNotify: BaseBoolInt(map['can_send_notify']),
      onlineStatus: GroupsOnlineStatus.fromMap(map['online_status']),
      ageLimits: GroupsGroupFullAgeLimits(map['age_limits']),
      banInfo: GroupsGroupBanInfo.fromMap(map['ban_info']),
      hasMarketApp: map['has_market_app'] as bool,
      addresses: GroupsAddressesInfo.fromMap(map['addresses']),
      isSubscribedPodcasts: map['is_subscribed_podcasts'] as bool,
      canSubscribePodcasts: map['can_subscribe_podcasts'] as bool,
      canSubscribePosts: map['can_subscribe_posts'] as bool,
      liveCovers: GroupsLiveCovers.fromMap(map['live_covers']),
    );
  }
}
