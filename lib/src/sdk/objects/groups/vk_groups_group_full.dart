import '../base/vk_base_bool_int.dart';
import '../base/vk_base_country.dart';
import '../base/vk_base_crop_photo.dart';
import '../base/vk_base_object.dart';
import 'vk_groups_addresses_info.dart';
import 'vk_groups_contacts_item.dart';
import 'vk_groups_counters_group.dart';
import 'vk_groups_cover.dart';
import 'vk_groups_group_admin_level.dart';
import 'vk_groups_group_ban_info.dart';
import 'vk_groups_group_full_age_limits.dart';
import 'vk_groups_group_full_main_section.dart';
import 'vk_groups_group_full_member_status.dart';
import 'vk_groups_group_is_closed.dart';
import 'vk_groups_group_type.dart';
import 'vk_groups_links_item.dart';
import 'vk_groups_live_covers.dart';
import 'vk_groups_market_info.dart';
import 'vk_groups_online_status.dart';

class VKGroupsGroupFull {
  final VKGroupsGroupAdminLevel adminLevel;

  /// Information whether community is banned.
  final String deactivated;

  /// Finish date in Unixtime format.
  final int finishDate;

  /// Community ID.
  final int id;

  /// Information whether current user is administrator.
  final VKBaseBoolInt isAdmin;

  /// Information whether current user is advertiser.
  final VKBaseBoolInt isAdvertiser;

  final VKGroupsGroupIsClosed isClosed;

  /// Information whether current user is member.
  final VKBaseBoolInt isMember;

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

  final VKGroupsGroupType type;

  final VKGroupsMarketInfo market;

  /// Current user's member status.
  final VKGroupsGroupFullMemberStatus memberStatus;

  /// Information whether community is adult.
  final VKBaseBoolInt isAdult;

  /// Information whether community is hidden from current user's newsfeed.
  final VKBaseBoolInt isHiddenFromFeed;

  /// Information whether community is in faves.
  final VKBaseBoolInt isFavorite;

  /// Information whether current user is subscribed.
  final VKBaseBoolInt isSubscribed;

  final VKBaseObject city;

  final VKBaseCountry country;

  /// Information whether community is verified.
  final VKBaseBoolInt verified;

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

  final VKGroupsCountersGroup counters;

  final VKGroupsCover cover;

  /// Information whether current user can post on community's wall.
  final VKBaseBoolInt canPost;

  /// Information whether current user can see all posts on community's wall.
  final VKBaseBoolInt canSeeAllPosts;

  /// Type of group, start date of event or category of public page.
  final String activity;

  /// Fixed post ID.
  final int fixedPost;

  /// Information whether current user can create topic.
  final VKBaseBoolInt canCreateTopic;

  /// Information whether current user can upload doc.
  final VKBaseBoolInt canUploadDoc;

  /// Information whether current user can upload story.
  final VKBaseBoolInt canUploadStory;

  /// Information whether current user can upload video.
  final VKBaseBoolInt canUploadVideo;

  /// Information whether community has photo.
  final VKBaseBoolInt hasPhoto;

  /// Данные о точках, по которым вырезаны профильная и миниатюрная фотографии сообщества.
  final VKBaseCropPhoto cropPhoto;

  /// Community status.
  final String status;

  /// Community's main photo album ID.
  final int mainAlbumId;

  final List<VKGroupsLinksItem> links;

  final List<VKGroupsContactsItem> contacts;

  /// Information about wall status in community.
  final int wall;

  /// Community's website.
  final String site;

  final VKGroupsGroupFullMainSection mainSection;

  /// Information whether the community has a "fire" pictogram..
  final VKBaseBoolInt trending;

  /// Information whether current user can send a message to community.
  final VKBaseBoolInt canMessage;

  /// Information whether community can send a message to current user.
  final VKBaseBoolInt isMessagesBlocked;

  /// Information whether community can send notifications by phone number to current user.
  final VKBaseBoolInt canSendNotify;

  /// Status of replies in community messages.
  final VKGroupsOnlineStatus onlineStatus;

  /// Information whether age limit.
  final VKGroupsGroupFullAgeLimits ageLimits;

  /// User ban info.
  final VKGroupsGroupBanInfo banInfo;

  /// Information whether community has installed market app.
  final bool hasMarketApp;

  /// Info about addresses in groups.
  final VKGroupsAddressesInfo addresses;

  /// Information whether current user is subscribed to podcasts.
  final bool isSubscribedPodcasts;

  /// Owner in whitelist or not.
  final bool canSubscribePodcasts;

  /// Can subscribe to wall.
  final bool canSubscribePosts;

  /// Live covers state.
  final VKGroupsLiveCovers liveCovers;

  const VKGroupsGroupFull({
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
  })  : assert(videoLiveLevel == null || videoLiveLevel >= 0),
        assert(videoLiveCount == null || videoLiveCount >= 0);

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
      'links': links?.map((item) => item?.toMap())?.toList(),
      'contacts': contacts?.map((item) => item?.toMap())?.toList(),
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

  factory VKGroupsGroupFull.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsGroupFull(
      adminLevel: VKGroupsGroupAdminLevel(map['admin_level']),
      deactivated: map['deactivated'] as String,
      finishDate: map['finish_date'] as int,
      id: map['id'] as int,
      isAdmin: VKBaseBoolInt(map['is_admin']),
      isAdvertiser: VKBaseBoolInt(map['is_advertiser']),
      isClosed: VKGroupsGroupIsClosed(map['is_closed']),
      isMember: VKBaseBoolInt(map['is_member']),
      name: map['name'] as String,
      photo100: map['photo_100'] as String,
      photo200: map['photo_200'] as String,
      photo50: map['photo_50'] as String,
      screenName: map['screen_name'] as String,
      startDate: map['start_date'] as int,
      type: VKGroupsGroupType(map['type']),
      market: VKGroupsMarketInfo.fromMap(map['market']),
      memberStatus: VKGroupsGroupFullMemberStatus(map['member_status']),
      isAdult: VKBaseBoolInt(map['is_adult']),
      isHiddenFromFeed: VKBaseBoolInt(map['is_hidden_from_feed']),
      isFavorite: VKBaseBoolInt(map['is_favorite']),
      isSubscribed: VKBaseBoolInt(map['is_subscribed']),
      city: VKBaseObject.fromMap(map['city']),
      country: VKBaseCountry.fromMap(map['country']),
      verified: VKBaseBoolInt(map['verified']),
      description: map['description'] as String,
      wikiPage: map['wiki_page'] as String,
      membersCount: map['members_count'] as int,
      videoLiveLevel: map['video_live_level'] as int,
      videoLiveCount: map['video_live_count'] as int,
      counters: VKGroupsCountersGroup.fromMap(map['counters']),
      cover: VKGroupsCover.fromMap(map['cover']),
      canPost: VKBaseBoolInt(map['can_post']),
      canSeeAllPosts: VKBaseBoolInt(map['can_see_all_posts']),
      activity: map['activity'] as String,
      fixedPost: map['fixed_post'] as int,
      canCreateTopic: VKBaseBoolInt(map['can_create_topic']),
      canUploadDoc: VKBaseBoolInt(map['can_upload_doc']),
      canUploadStory: VKBaseBoolInt(map['can_upload_story']),
      canUploadVideo: VKBaseBoolInt(map['can_upload_video']),
      hasPhoto: VKBaseBoolInt(map['has_photo']),
      cropPhoto: VKBaseCropPhoto.fromMap(map['crop_photo']),
      status: map['status'] as String,
      mainAlbumId: map['main_album_id'] as int,
      links: map['links']
          ?.map((item) => VKGroupsLinksItem.fromMap(item))
          ?.toList(),
      contacts: map['contacts']
          ?.map((item) => VKGroupsContactsItem.fromMap(item))
          ?.toList(),
      wall: map['wall'] as int,
      site: map['site'] as String,
      mainSection: VKGroupsGroupFullMainSection(map['main_section']),
      trending: VKBaseBoolInt(map['trending']),
      canMessage: VKBaseBoolInt(map['can_message']),
      isMessagesBlocked: VKBaseBoolInt(map['is_messages_blocked']),
      canSendNotify: VKBaseBoolInt(map['can_send_notify']),
      onlineStatus: VKGroupsOnlineStatus.fromMap(map['online_status']),
      ageLimits: VKGroupsGroupFullAgeLimits(map['age_limits']),
      banInfo: VKGroupsGroupBanInfo.fromMap(map['ban_info']),
      hasMarketApp: map['has_market_app'] as bool,
      addresses: VKGroupsAddressesInfo.fromMap(map['addresses']),
      isSubscribedPodcasts: map['is_subscribed_podcasts'] as bool,
      canSubscribePodcasts: map['can_subscribe_podcasts'] as bool,
      canSubscribePosts: map['can_subscribe_posts'] as bool,
      liveCovers: VKGroupsLiveCovers.fromMap(map['live_covers']),
    );
  }
}
