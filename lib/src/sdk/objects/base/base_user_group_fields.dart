/// .
class VKBaseUserGroupFields {
  final String value;

  const VKBaseUserGroupFields._(this.value);

  factory VKBaseUserGroupFields(value) {
    if (!values.contains(value)) return null;
    return VKBaseUserGroupFields._(value);
  }

  static const VKBaseUserGroupFields about = VKBaseUserGroupFields._('about');

  static const VKBaseUserGroupFields actionButton =
      VKBaseUserGroupFields._('action_button');

  static const VKBaseUserGroupFields activities =
      VKBaseUserGroupFields._('activities');

  static const VKBaseUserGroupFields activity =
      VKBaseUserGroupFields._('activity');

  static const VKBaseUserGroupFields addresses =
      VKBaseUserGroupFields._('addresses');

  static const VKBaseUserGroupFields adminLevel =
      VKBaseUserGroupFields._('admin_level');

  static const VKBaseUserGroupFields ageLimits =
      VKBaseUserGroupFields._('age_limits');

  static const VKBaseUserGroupFields authorId =
      VKBaseUserGroupFields._('author_id');

  static const VKBaseUserGroupFields banInfo =
      VKBaseUserGroupFields._('ban_info');

  static const VKBaseUserGroupFields bdate = VKBaseUserGroupFields._('bdate');

  static const VKBaseUserGroupFields blacklisted =
      VKBaseUserGroupFields._('blacklisted');

  static const VKBaseUserGroupFields blacklistedByMe =
      VKBaseUserGroupFields._('blacklisted_by_me');

  static const VKBaseUserGroupFields books = VKBaseUserGroupFields._('books');

  static const VKBaseUserGroupFields canCreateTopic =
      VKBaseUserGroupFields._('can_create_topic');

  static const VKBaseUserGroupFields canMessage =
      VKBaseUserGroupFields._('can_message');

  static const VKBaseUserGroupFields canPost =
      VKBaseUserGroupFields._('can_post');

  static const VKBaseUserGroupFields canSeeAllPosts =
      VKBaseUserGroupFields._('can_see_all_posts');

  static const VKBaseUserGroupFields canSeeAudio =
      VKBaseUserGroupFields._('can_see_audio');

  static const VKBaseUserGroupFields canSendFriendRequest =
      VKBaseUserGroupFields._('can_send_friend_request');

  static const VKBaseUserGroupFields canSendNotify =
      VKBaseUserGroupFields._('can_send_notify');

  static const VKBaseUserGroupFields canUploadVideo =
      VKBaseUserGroupFields._('can_upload_video');

  static const VKBaseUserGroupFields canWritePrivateMessage =
      VKBaseUserGroupFields._('can_write_private_message');

  static const VKBaseUserGroupFields career = VKBaseUserGroupFields._('career');

  static const VKBaseUserGroupFields city = VKBaseUserGroupFields._('city');

  static const VKBaseUserGroupFields commonCount =
      VKBaseUserGroupFields._('common_count');

  static const VKBaseUserGroupFields connections =
      VKBaseUserGroupFields._('connections');

  static const VKBaseUserGroupFields contacts =
      VKBaseUserGroupFields._('contacts');

  static const VKBaseUserGroupFields counters =
      VKBaseUserGroupFields._('counters');

  static const VKBaseUserGroupFields country =
      VKBaseUserGroupFields._('country');

  static const VKBaseUserGroupFields cover = VKBaseUserGroupFields._('cover');

  static const VKBaseUserGroupFields cropPhoto =
      VKBaseUserGroupFields._('crop_photo');

  static const VKBaseUserGroupFields deactivated =
      VKBaseUserGroupFields._('deactivated');

  static const VKBaseUserGroupFields description =
      VKBaseUserGroupFields._('description');

  static const VKBaseUserGroupFields domain = VKBaseUserGroupFields._('domain');

  static const VKBaseUserGroupFields education =
      VKBaseUserGroupFields._('education');

  static const VKBaseUserGroupFields exports =
      VKBaseUserGroupFields._('exports');

  static const VKBaseUserGroupFields finishDate =
      VKBaseUserGroupFields._('finish_date');

  static const VKBaseUserGroupFields fixedPost =
      VKBaseUserGroupFields._('fixed_post');

  static const VKBaseUserGroupFields followersCount =
      VKBaseUserGroupFields._('followers_count');

  static const VKBaseUserGroupFields friendStatus =
      VKBaseUserGroupFields._('friend_status');

  static const VKBaseUserGroupFields games = VKBaseUserGroupFields._('games');

  static const VKBaseUserGroupFields hasMarketApp =
      VKBaseUserGroupFields._('has_market_app');

  static const VKBaseUserGroupFields hasMobile =
      VKBaseUserGroupFields._('has_mobile');

  static const VKBaseUserGroupFields hasPhoto =
      VKBaseUserGroupFields._('has_photo');

  static const VKBaseUserGroupFields homeTown =
      VKBaseUserGroupFields._('home_town');

  static const VKBaseUserGroupFields id = VKBaseUserGroupFields._('id');

  static const VKBaseUserGroupFields interests =
      VKBaseUserGroupFields._('interests');

  static const VKBaseUserGroupFields isAdmin =
      VKBaseUserGroupFields._('is_admin');

  static const VKBaseUserGroupFields isClosed =
      VKBaseUserGroupFields._('is_closed');

  static const VKBaseUserGroupFields isFavorite =
      VKBaseUserGroupFields._('is_favorite');

  static const VKBaseUserGroupFields isFriend =
      VKBaseUserGroupFields._('is_friend');

  static const VKBaseUserGroupFields isHiddenFromFeed =
      VKBaseUserGroupFields._('is_hidden_from_feed');

  static const VKBaseUserGroupFields isMember =
      VKBaseUserGroupFields._('is_member');

  static const VKBaseUserGroupFields isMessagesBlocked =
      VKBaseUserGroupFields._('is_messages_blocked');

  static const VKBaseUserGroupFields isSubscribed =
      VKBaseUserGroupFields._('is_subscribed');

  static const VKBaseUserGroupFields lastSeen =
      VKBaseUserGroupFields._('last_seen');

  static const VKBaseUserGroupFields links = VKBaseUserGroupFields._('links');

  static const VKBaseUserGroupFields lists = VKBaseUserGroupFields._('lists');

  static const VKBaseUserGroupFields maidenName =
      VKBaseUserGroupFields._('maiden_name');

  static const VKBaseUserGroupFields mainAlbumId =
      VKBaseUserGroupFields._('main_album_id');

  static const VKBaseUserGroupFields mainSection =
      VKBaseUserGroupFields._('main_section');

  static const VKBaseUserGroupFields market = VKBaseUserGroupFields._('market');

  static const VKBaseUserGroupFields memberStatus =
      VKBaseUserGroupFields._('member_status');

  static const VKBaseUserGroupFields membersCount =
      VKBaseUserGroupFields._('members_count');

  static const VKBaseUserGroupFields military =
      VKBaseUserGroupFields._('military');

  static const VKBaseUserGroupFields movies = VKBaseUserGroupFields._('movies');

  static const VKBaseUserGroupFields music = VKBaseUserGroupFields._('music');

  static const VKBaseUserGroupFields name = VKBaseUserGroupFields._('name');

  static const VKBaseUserGroupFields nickname =
      VKBaseUserGroupFields._('nickname');

  static const VKBaseUserGroupFields occupation =
      VKBaseUserGroupFields._('occupation');

  static const VKBaseUserGroupFields online = VKBaseUserGroupFields._('online');

  static const VKBaseUserGroupFields onlineStatus =
      VKBaseUserGroupFields._('online_status');

  static const VKBaseUserGroupFields personal =
      VKBaseUserGroupFields._('personal');

  static const VKBaseUserGroupFields phone = VKBaseUserGroupFields._('phone');

  static const VKBaseUserGroupFields photo100 =
      VKBaseUserGroupFields._('photo_100');

  static const VKBaseUserGroupFields photo200 =
      VKBaseUserGroupFields._('photo_200');

  static const VKBaseUserGroupFields photo200Orig =
      VKBaseUserGroupFields._('photo_200_orig');

  static const VKBaseUserGroupFields photo400Orig =
      VKBaseUserGroupFields._('photo_400_orig');

  static const VKBaseUserGroupFields photo50 =
      VKBaseUserGroupFields._('photo_50');

  static const VKBaseUserGroupFields photoId =
      VKBaseUserGroupFields._('photo_id');

  static const VKBaseUserGroupFields photoMax =
      VKBaseUserGroupFields._('photo_max');

  static const VKBaseUserGroupFields photoMaxOrig =
      VKBaseUserGroupFields._('photo_max_orig');

  static const VKBaseUserGroupFields quotes = VKBaseUserGroupFields._('quotes');

  static const VKBaseUserGroupFields relation =
      VKBaseUserGroupFields._('relation');

  static const VKBaseUserGroupFields relatives =
      VKBaseUserGroupFields._('relatives');

  static const VKBaseUserGroupFields schools =
      VKBaseUserGroupFields._('schools');

  static const VKBaseUserGroupFields screenName =
      VKBaseUserGroupFields._('screen_name');

  static const VKBaseUserGroupFields sex = VKBaseUserGroupFields._('sex');

  static const VKBaseUserGroupFields site = VKBaseUserGroupFields._('site');

  static const VKBaseUserGroupFields startDate =
      VKBaseUserGroupFields._('start_date');

  static const VKBaseUserGroupFields status = VKBaseUserGroupFields._('status');

  static const VKBaseUserGroupFields timezone =
      VKBaseUserGroupFields._('timezone');

  static const VKBaseUserGroupFields trending =
      VKBaseUserGroupFields._('trending');

  static const VKBaseUserGroupFields tv = VKBaseUserGroupFields._('tv');

  static const VKBaseUserGroupFields type = VKBaseUserGroupFields._('type');

  static const VKBaseUserGroupFields universities =
      VKBaseUserGroupFields._('universities');

  static const VKBaseUserGroupFields verified =
      VKBaseUserGroupFields._('verified');

  static const VKBaseUserGroupFields vkAdminStatus =
      VKBaseUserGroupFields._('vk_admin_status');

  static const VKBaseUserGroupFields wallComments =
      VKBaseUserGroupFields._('wall_comments');

  static const VKBaseUserGroupFields wikiPage =
      VKBaseUserGroupFields._('wiki_page');

  static List get values => const [
        'about',
        'action_button',
        'activities',
        'activity',
        'addresses',
        'admin_level',
        'age_limits',
        'author_id',
        'ban_info',
        'bdate',
        'blacklisted',
        'blacklisted_by_me',
        'books',
        'can_create_topic',
        'can_message',
        'can_post',
        'can_see_all_posts',
        'can_see_audio',
        'can_send_friend_request',
        'can_upload_video',
        'can_write_private_message',
        'career',
        'city',
        'common_count',
        'connections',
        'contacts',
        'counters',
        'country',
        'cover',
        'crop_photo',
        'deactivated',
        'description',
        'domain',
        'education',
        'exports',
        'finish_date',
        'fixed_post',
        'followers_count',
        'friend_status',
        'games',
        'has_market_app',
        'has_mobile',
        'has_photo',
        'home_town',
        'id',
        'interests',
        'is_admin',
        'is_closed',
        'is_favorite',
        'is_friend',
        'is_hidden_from_feed',
        'is_member',
        'is_messages_blocked',
        'can_send_notify',
        'is_subscribed',
        'last_seen',
        'links',
        'lists',
        'maiden_name',
        'main_album_id',
        'main_section',
        'market',
        'member_status',
        'members_count',
        'military',
        'movies',
        'music',
        'name',
        'nickname',
        'occupation',
        'online',
        'online_status',
        'personal',
        'phone',
        'photo_100',
        'photo_200',
        'photo_200_orig',
        'photo_400_orig',
        'photo_50',
        'photo_id',
        'photo_max',
        'photo_max_orig',
        'quotes',
        'relation',
        'relatives',
        'schools',
        'screen_name',
        'sex',
        'site',
        'start_date',
        'status',
        'timezone',
        'trending',
        'tv',
        'type',
        'universities',
        'verified',
        'wall_comments',
        'wiki_page',
        'vk_admin_status'
      ];

  @override
  String toString() => '$value';
}
