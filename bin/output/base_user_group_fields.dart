/// .
class BaseUserGroupFields {
  final String value;

  const BaseUserGroupFields._(this.value);

  factory BaseUserGroupFields(value) {
    if (!values.contains(value)) return null;

    return BaseUserGroupFields._(value);
  }

  static const BaseUserGroupFields about = BaseUserGroupFields._('about');

  static const BaseUserGroupFields actionButton = BaseUserGroupFields._('action_button');

  static const BaseUserGroupFields activities = BaseUserGroupFields._('activities');

  static const BaseUserGroupFields activity = BaseUserGroupFields._('activity');

  static const BaseUserGroupFields addresses = BaseUserGroupFields._('addresses');

  static const BaseUserGroupFields adminLevel = BaseUserGroupFields._('admin_level');

  static const BaseUserGroupFields ageLimits = BaseUserGroupFields._('age_limits');

  static const BaseUserGroupFields authorId = BaseUserGroupFields._('author_id');

  static const BaseUserGroupFields banInfo = BaseUserGroupFields._('ban_info');

  static const BaseUserGroupFields bdate = BaseUserGroupFields._('bdate');

  static const BaseUserGroupFields blacklisted = BaseUserGroupFields._('blacklisted');

  static const BaseUserGroupFields blacklistedByMe = BaseUserGroupFields._('blacklisted_by_me');

  static const BaseUserGroupFields books = BaseUserGroupFields._('books');

  static const BaseUserGroupFields canCreateTopic = BaseUserGroupFields._('can_create_topic');

  static const BaseUserGroupFields canMessage = BaseUserGroupFields._('can_message');

  static const BaseUserGroupFields canPost = BaseUserGroupFields._('can_post');

  static const BaseUserGroupFields canSeeAllPosts = BaseUserGroupFields._('can_see_all_posts');

  static const BaseUserGroupFields canSeeAudio = BaseUserGroupFields._('can_see_audio');

  static const BaseUserGroupFields canSendFriendRequest = BaseUserGroupFields._('can_send_friend_request');

  static const BaseUserGroupFields canUploadVideo = BaseUserGroupFields._('can_upload_video');

  static const BaseUserGroupFields canWritePrivateMessage = BaseUserGroupFields._('can_write_private_message');

  static const BaseUserGroupFields career = BaseUserGroupFields._('career');

  static const BaseUserGroupFields city = BaseUserGroupFields._('city');

  static const BaseUserGroupFields commonCount = BaseUserGroupFields._('common_count');

  static const BaseUserGroupFields connections = BaseUserGroupFields._('connections');

  static const BaseUserGroupFields contacts = BaseUserGroupFields._('contacts');

  static const BaseUserGroupFields counters = BaseUserGroupFields._('counters');

  static const BaseUserGroupFields country = BaseUserGroupFields._('country');

  static const BaseUserGroupFields cover = BaseUserGroupFields._('cover');

  static const BaseUserGroupFields cropPhoto = BaseUserGroupFields._('crop_photo');

  static const BaseUserGroupFields deactivated = BaseUserGroupFields._('deactivated');

  static const BaseUserGroupFields description = BaseUserGroupFields._('description');

  static const BaseUserGroupFields domain = BaseUserGroupFields._('domain');

  static const BaseUserGroupFields education = BaseUserGroupFields._('education');

  static const BaseUserGroupFields exports = BaseUserGroupFields._('exports');

  static const BaseUserGroupFields finishDate = BaseUserGroupFields._('finish_date');

  static const BaseUserGroupFields fixedPost = BaseUserGroupFields._('fixed_post');

  static const BaseUserGroupFields followersCount = BaseUserGroupFields._('followers_count');

  static const BaseUserGroupFields friendStatus = BaseUserGroupFields._('friend_status');

  static const BaseUserGroupFields games = BaseUserGroupFields._('games');

  static const BaseUserGroupFields hasMarketApp = BaseUserGroupFields._('has_market_app');

  static const BaseUserGroupFields hasMobile = BaseUserGroupFields._('has_mobile');

  static const BaseUserGroupFields hasPhoto = BaseUserGroupFields._('has_photo');

  static const BaseUserGroupFields homeTown = BaseUserGroupFields._('home_town');

  static const BaseUserGroupFields id = BaseUserGroupFields._('id');

  static const BaseUserGroupFields interests = BaseUserGroupFields._('interests');

  static const BaseUserGroupFields isAdmin = BaseUserGroupFields._('is_admin');

  static const BaseUserGroupFields isClosed = BaseUserGroupFields._('is_closed');

  static const BaseUserGroupFields isFavorite = BaseUserGroupFields._('is_favorite');

  static const BaseUserGroupFields isFriend = BaseUserGroupFields._('is_friend');

  static const BaseUserGroupFields isHiddenFromFeed = BaseUserGroupFields._('is_hidden_from_feed');

  static const BaseUserGroupFields isMember = BaseUserGroupFields._('is_member');

  static const BaseUserGroupFields isMessagesBlocked = BaseUserGroupFields._('is_messages_blocked');

  static const BaseUserGroupFields canSendNotify = BaseUserGroupFields._('can_send_notify');

  static const BaseUserGroupFields isSubscribed = BaseUserGroupFields._('is_subscribed');

  static const BaseUserGroupFields lastSeen = BaseUserGroupFields._('last_seen');

  static const BaseUserGroupFields links = BaseUserGroupFields._('links');

  static const BaseUserGroupFields lists = BaseUserGroupFields._('lists');

  static const BaseUserGroupFields maidenName = BaseUserGroupFields._('maiden_name');

  static const BaseUserGroupFields mainAlbumId = BaseUserGroupFields._('main_album_id');

  static const BaseUserGroupFields mainSection = BaseUserGroupFields._('main_section');

  static const BaseUserGroupFields market = BaseUserGroupFields._('market');

  static const BaseUserGroupFields memberStatus = BaseUserGroupFields._('member_status');

  static const BaseUserGroupFields membersCount = BaseUserGroupFields._('members_count');

  static const BaseUserGroupFields military = BaseUserGroupFields._('military');

  static const BaseUserGroupFields movies = BaseUserGroupFields._('movies');

  static const BaseUserGroupFields music = BaseUserGroupFields._('music');

  static const BaseUserGroupFields name = BaseUserGroupFields._('name');

  static const BaseUserGroupFields nickname = BaseUserGroupFields._('nickname');

  static const BaseUserGroupFields occupation = BaseUserGroupFields._('occupation');

  static const BaseUserGroupFields online = BaseUserGroupFields._('online');

  static const BaseUserGroupFields onlineStatus = BaseUserGroupFields._('online_status');

  static const BaseUserGroupFields personal = BaseUserGroupFields._('personal');

  static const BaseUserGroupFields phone = BaseUserGroupFields._('phone');

  static const BaseUserGroupFields photo100 = BaseUserGroupFields._('photo_100');

  static const BaseUserGroupFields photo200 = BaseUserGroupFields._('photo_200');

  static const BaseUserGroupFields photo200Orig = BaseUserGroupFields._('photo_200_orig');

  static const BaseUserGroupFields photo400Orig = BaseUserGroupFields._('photo_400_orig');

  static const BaseUserGroupFields photo50 = BaseUserGroupFields._('photo_50');

  static const BaseUserGroupFields photoId = BaseUserGroupFields._('photo_id');

  static const BaseUserGroupFields photoMax = BaseUserGroupFields._('photo_max');

  static const BaseUserGroupFields photoMaxOrig = BaseUserGroupFields._('photo_max_orig');

  static const BaseUserGroupFields quotes = BaseUserGroupFields._('quotes');

  static const BaseUserGroupFields relation = BaseUserGroupFields._('relation');

  static const BaseUserGroupFields relatives = BaseUserGroupFields._('relatives');

  static const BaseUserGroupFields schools = BaseUserGroupFields._('schools');

  static const BaseUserGroupFields screenName = BaseUserGroupFields._('screen_name');

  static const BaseUserGroupFields sex = BaseUserGroupFields._('sex');

  static const BaseUserGroupFields site = BaseUserGroupFields._('site');

  static const BaseUserGroupFields startDate = BaseUserGroupFields._('start_date');

  static const BaseUserGroupFields status = BaseUserGroupFields._('status');

  static const BaseUserGroupFields timezone = BaseUserGroupFields._('timezone');

  static const BaseUserGroupFields trending = BaseUserGroupFields._('trending');

  static const BaseUserGroupFields tv = BaseUserGroupFields._('tv');

  static const BaseUserGroupFields type = BaseUserGroupFields._('type');

  static const BaseUserGroupFields universities = BaseUserGroupFields._('universities');

  static const BaseUserGroupFields verified = BaseUserGroupFields._('verified');

  static const BaseUserGroupFields wallComments = BaseUserGroupFields._('wall_comments');

  static const BaseUserGroupFields wikiPage = BaseUserGroupFields._('wiki_page');

  static const BaseUserGroupFields vkAdminStatus = BaseUserGroupFields._('vk_admin_status');

  static List get values => const ['about', 'action_button', 'activities', 'activity', 'addresses', 'admin_level', 'age_limits', 'author_id', 'ban_info', 'bdate', 'blacklisted', 'blacklisted_by_me', 'books', 'can_create_topic', 'can_message', 'can_post', 'can_see_all_posts', 'can_see_audio', 'can_send_friend_request', 'can_upload_video', 'can_write_private_message', 'career', 'city', 'common_count', 'connections', 'contacts', 'counters', 'country', 'cover', 'crop_photo', 'deactivated', 'description', 'domain', 'education', 'exports', 'finish_date', 'fixed_post', 'followers_count', 'friend_status', 'games', 'has_market_app', 'has_mobile', 'has_photo', 'home_town', 'id', 'interests', 'is_admin', 'is_closed', 'is_favorite', 'is_friend', 'is_hidden_from_feed', 'is_member', 'is_messages_blocked', 'can_send_notify', 'is_subscribed', 'last_seen', 'links', 'lists', 'maiden_name', 'main_album_id', 'main_section', 'market', 'member_status', 'members_count', 'military', 'movies', 'music', 'name', 'nickname', 'occupation', 'online', 'online_status', 'personal', 'phone', 'photo_100', 'photo_200', 'photo_200_orig', 'photo_400_orig', 'photo_50', 'photo_id', 'photo_max', 'photo_max_orig', 'quotes', 'relation', 'relatives', 'schools', 'screen_name', 'sex', 'site', 'start_date', 'status', 'timezone', 'trending', 'tv', 'type', 'universities', 'verified', 'wall_comments', 'wiki_page', 'vk_admin_status'];

  @override
  String toString() => '$value';
}
