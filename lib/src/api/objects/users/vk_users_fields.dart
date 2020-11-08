/// .
class VKUsersFields {
  final String value;

  const VKUsersFields._(this.value);

  factory VKUsersFields(value) {
    if (!values.contains(value)) return null;
    return VKUsersFields._(value);
  }

  static const VKUsersFields about = VKUsersFields._('about');

  static const VKUsersFields activities = VKUsersFields._('activities');

  static const VKUsersFields bdate = VKUsersFields._('bdate');

  static const VKUsersFields blacklisted = VKUsersFields._('blacklisted');

  static const VKUsersFields blacklistedByMe =
      VKUsersFields._('blacklisted_by_me');

  static const VKUsersFields books = VKUsersFields._('books');

  static const VKUsersFields canInviteToChats =
      VKUsersFields._('can_invite_to_chats');

  static const VKUsersFields canPost = VKUsersFields._('can_post');

  static const VKUsersFields canSeeAllPosts =
      VKUsersFields._('can_see_all_posts');

  static const VKUsersFields canSeeAudio = VKUsersFields._('can_see_audio');

  static const VKUsersFields canSendFriendRequest =
      VKUsersFields._('can_send_friend_request');

  static const VKUsersFields canSubscribePosts =
      VKUsersFields._('can_subscribe_posts');

  static const VKUsersFields canWritePrivateMessage =
      VKUsersFields._('can_write_private_message');

  static const VKUsersFields career = VKUsersFields._('career');

  static const VKUsersFields city = VKUsersFields._('city');

  static const VKUsersFields clipsCount = VKUsersFields._('clips_count');

  static const VKUsersFields commonCount = VKUsersFields._('common_count');

  static const VKUsersFields connections = VKUsersFields._('connections');

  static const VKUsersFields contacts = VKUsersFields._('contacts');

  static const VKUsersFields counters = VKUsersFields._('counters');

  static const VKUsersFields country = VKUsersFields._('country');

  static const VKUsersFields cropPhoto = VKUsersFields._('crop_photo');

  static const VKUsersFields descriptions = VKUsersFields._('descriptions');

  static const VKUsersFields domain = VKUsersFields._('domain');

  static const VKUsersFields education = VKUsersFields._('education');

  static const VKUsersFields exports = VKUsersFields._('exports');

  static const VKUsersFields followersCount =
      VKUsersFields._('followers_count');

  static const VKUsersFields friendStatus = VKUsersFields._('friend_status');

  static const VKUsersFields friendshipWeeks =
      VKUsersFields._('friendship_weeks');

  static const VKUsersFields games = VKUsersFields._('games');

  static const VKUsersFields hasMobile = VKUsersFields._('has_mobile');

  static const VKUsersFields hasPhoto = VKUsersFields._('has_photo');

  static const VKUsersFields homeTown = VKUsersFields._('home_town');

  static const VKUsersFields interests = VKUsersFields._('interests');

  static const VKUsersFields isFavorite = VKUsersFields._('is_favorite');

  static const VKUsersFields isFriend = VKUsersFields._('is_friend');

  static const VKUsersFields isHiddenFromFeed =
      VKUsersFields._('is_hidden_from_feed');

  static const VKUsersFields lastSeen = VKUsersFields._('last_seen');

  static const VKUsersFields lists = VKUsersFields._('lists');

  static const VKUsersFields maidenName = VKUsersFields._('maiden_name');

  static const VKUsersFields military = VKUsersFields._('military');

  static const VKUsersFields movies = VKUsersFields._('movies');

  static const VKUsersFields music = VKUsersFields._('music');

  static const VKUsersFields mutual = VKUsersFields._('mutual');

  static const VKUsersFields nickname = VKUsersFields._('nickname');

  static const VKUsersFields occupation = VKUsersFields._('occupation');

  static const VKUsersFields online = VKUsersFields._('online');

  static const VKUsersFields personal = VKUsersFields._('personal');

  static const VKUsersFields photo100 = VKUsersFields._('photo_100');

  static const VKUsersFields photo200 = VKUsersFields._('photo_200');

  static const VKUsersFields photo200Orig = VKUsersFields._('photo_200_orig');

  static const VKUsersFields photo400Orig = VKUsersFields._('photo_400_orig');

  static const VKUsersFields photo50 = VKUsersFields._('photo_50');

  static const VKUsersFields photoId = VKUsersFields._('photo_id');

  static const VKUsersFields photoMax = VKUsersFields._('photo_max');

  static const VKUsersFields photoMaxOrig = VKUsersFields._('photo_max_orig');

  static const VKUsersFields quotes = VKUsersFields._('quotes');

  static const VKUsersFields relation = VKUsersFields._('relation');

  static const VKUsersFields relatives = VKUsersFields._('relatives');

  static const VKUsersFields schools = VKUsersFields._('schools');

  static const VKUsersFields screenName = VKUsersFields._('screen_name');

  static const VKUsersFields sex = VKUsersFields._('sex');

  static const VKUsersFields site = VKUsersFields._('site');

  static const VKUsersFields status = VKUsersFields._('status');

  static const VKUsersFields storiesArchiveCount =
      VKUsersFields._('stories_archive_count');

  static const VKUsersFields timezone = VKUsersFields._('timezone');

  static const VKUsersFields trending = VKUsersFields._('trending');

  static const VKUsersFields tv = VKUsersFields._('tv');

  static const VKUsersFields universities = VKUsersFields._('universities');

  static const VKUsersFields verified = VKUsersFields._('verified');

  static const VKUsersFields videoLiveCount =
      VKUsersFields._('video_live_count');

  static const VKUsersFields videoLiveLevel =
      VKUsersFields._('video_live_level');

  static const VKUsersFields wallComments = VKUsersFields._('wall_comments');

  static List get values => const [
        'photo_id',
        'verified',
        'sex',
        'bdate',
        'city',
        'country',
        'home_town',
        'has_photo',
        'photo_50',
        'photo_100',
        'photo_200_orig',
        'photo_200',
        'photo_400_orig',
        'photo_max',
        'photo_max_orig',
        'online',
        'lists',
        'domain',
        'has_mobile',
        'contacts',
        'site',
        'education',
        'universities',
        'schools',
        'status',
        'last_seen',
        'followers_count',
        'counters',
        'common_count',
        'occupation',
        'nickname',
        'relatives',
        'relation',
        'personal',
        'connections',
        'exports',
        'wall_comments',
        'activities',
        'interests',
        'music',
        'movies',
        'tv',
        'books',
        'games',
        'about',
        'quotes',
        'can_post',
        'can_see_all_posts',
        'can_see_audio',
        'can_write_private_message',
        'can_send_friend_request',
        'is_favorite',
        'is_hidden_from_feed',
        'timezone',
        'screen_name',
        'maiden_name',
        'crop_photo',
        'is_friend',
        'friend_status',
        'career',
        'military',
        'blacklisted',
        'blacklisted_by_me',
        'can_subscribe_posts',
        'descriptions',
        'trending',
        'mutual',
        'friendship_weeks',
        'can_invite_to_chats',
        'stories_archive_count',
        'video_live_level',
        'video_live_count',
        'clips_count'
      ];

  @override
  String toString() => '$value';
}
