/// .
class UsersFields {
  final String value;

  const UsersFields._(this.value);

  factory UsersFields(value) {
    if (!values.contains(value)) return null;

    return UsersFields._(value);
  }

  static const UsersFields photoId = UsersFields._('photo_id');

  static const UsersFields verified = UsersFields._('verified');

  static const UsersFields sex = UsersFields._('sex');

  static const UsersFields bdate = UsersFields._('bdate');

  static const UsersFields city = UsersFields._('city');

  static const UsersFields country = UsersFields._('country');

  static const UsersFields homeTown = UsersFields._('home_town');

  static const UsersFields hasPhoto = UsersFields._('has_photo');

  static const UsersFields photo50 = UsersFields._('photo_50');

  static const UsersFields photo100 = UsersFields._('photo_100');

  static const UsersFields photo200Orig = UsersFields._('photo_200_orig');

  static const UsersFields photo200 = UsersFields._('photo_200');

  static const UsersFields photo400Orig = UsersFields._('photo_400_orig');

  static const UsersFields photoMax = UsersFields._('photo_max');

  static const UsersFields photoMaxOrig = UsersFields._('photo_max_orig');

  static const UsersFields online = UsersFields._('online');

  static const UsersFields lists = UsersFields._('lists');

  static const UsersFields domain = UsersFields._('domain');

  static const UsersFields hasMobile = UsersFields._('has_mobile');

  static const UsersFields contacts = UsersFields._('contacts');

  static const UsersFields site = UsersFields._('site');

  static const UsersFields education = UsersFields._('education');

  static const UsersFields universities = UsersFields._('universities');

  static const UsersFields schools = UsersFields._('schools');

  static const UsersFields status = UsersFields._('status');

  static const UsersFields lastSeen = UsersFields._('last_seen');

  static const UsersFields followersCount = UsersFields._('followers_count');

  static const UsersFields counters = UsersFields._('counters');

  static const UsersFields commonCount = UsersFields._('common_count');

  static const UsersFields occupation = UsersFields._('occupation');

  static const UsersFields nickname = UsersFields._('nickname');

  static const UsersFields relatives = UsersFields._('relatives');

  static const UsersFields relation = UsersFields._('relation');

  static const UsersFields personal = UsersFields._('personal');

  static const UsersFields connections = UsersFields._('connections');

  static const UsersFields exports = UsersFields._('exports');

  static const UsersFields wallComments = UsersFields._('wall_comments');

  static const UsersFields activities = UsersFields._('activities');

  static const UsersFields interests = UsersFields._('interests');

  static const UsersFields music = UsersFields._('music');

  static const UsersFields movies = UsersFields._('movies');

  static const UsersFields tv = UsersFields._('tv');

  static const UsersFields books = UsersFields._('books');

  static const UsersFields games = UsersFields._('games');

  static const UsersFields about = UsersFields._('about');

  static const UsersFields quotes = UsersFields._('quotes');

  static const UsersFields canPost = UsersFields._('can_post');

  static const UsersFields canSeeAllPosts = UsersFields._('can_see_all_posts');

  static const UsersFields canSeeAudio = UsersFields._('can_see_audio');

  static const UsersFields canWritePrivateMessage = UsersFields._('can_write_private_message');

  static const UsersFields canSendFriendRequest = UsersFields._('can_send_friend_request');

  static const UsersFields isFavorite = UsersFields._('is_favorite');

  static const UsersFields isHiddenFromFeed = UsersFields._('is_hidden_from_feed');

  static const UsersFields timezone = UsersFields._('timezone');

  static const UsersFields screenName = UsersFields._('screen_name');

  static const UsersFields maidenName = UsersFields._('maiden_name');

  static const UsersFields cropPhoto = UsersFields._('crop_photo');

  static const UsersFields isFriend = UsersFields._('is_friend');

  static const UsersFields friendStatus = UsersFields._('friend_status');

  static const UsersFields career = UsersFields._('career');

  static const UsersFields military = UsersFields._('military');

  static const UsersFields blacklisted = UsersFields._('blacklisted');

  static const UsersFields blacklistedByMe = UsersFields._('blacklisted_by_me');

  static const UsersFields canSubscribePosts = UsersFields._('can_subscribe_posts');

  static const UsersFields descriptions = UsersFields._('descriptions');

  static const UsersFields trending = UsersFields._('trending');

  static const UsersFields mutual = UsersFields._('mutual');

  static const UsersFields friendshipWeeks = UsersFields._('friendship_weeks');

  static const UsersFields canInviteToChats = UsersFields._('can_invite_to_chats');

  static const UsersFields storiesArchiveCount = UsersFields._('stories_archive_count');

  static const UsersFields videoLiveLevel = UsersFields._('video_live_level');

  static const UsersFields videoLiveCount = UsersFields._('video_live_count');

  static const UsersFields clipsCount = UsersFields._('clips_count');

  static List get values => const ['photo_id', 'verified', 'sex', 'bdate', 'city', 'country', 'home_town', 'has_photo', 'photo_50', 'photo_100', 'photo_200_orig', 'photo_200', 'photo_400_orig', 'photo_max', 'photo_max_orig', 'online', 'lists', 'domain', 'has_mobile', 'contacts', 'site', 'education', 'universities', 'schools', 'status', 'last_seen', 'followers_count', 'counters', 'common_count', 'occupation', 'nickname', 'relatives', 'relation', 'personal', 'connections', 'exports', 'wall_comments', 'activities', 'interests', 'music', 'movies', 'tv', 'books', 'games', 'about', 'quotes', 'can_post', 'can_see_all_posts', 'can_see_audio', 'can_write_private_message', 'can_send_friend_request', 'is_favorite', 'is_hidden_from_feed', 'timezone', 'screen_name', 'maiden_name', 'crop_photo', 'is_friend', 'friend_status', 'career', 'military', 'blacklisted', 'blacklisted_by_me', 'can_subscribe_posts', 'descriptions', 'trending', 'mutual', 'friendship_weeks', 'can_invite_to_chats', 'stories_archive_count', 'video_live_level', 'video_live_count', 'clips_count'];

  @override
  String toString() => '$value';
}
