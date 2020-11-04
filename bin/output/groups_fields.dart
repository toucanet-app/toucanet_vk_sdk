/// .
class GroupsFields {
  final String value;

  const GroupsFields._(this.value);

  factory GroupsFields(value) {
    if (!values.contains(value)) return null;

    return GroupsFields._(value);
  }

  static const GroupsFields market = GroupsFields._('market');

  static const GroupsFields memberStatus = GroupsFields._('member_status');

  static const GroupsFields isFavorite = GroupsFields._('is_favorite');

  static const GroupsFields isSubscribed = GroupsFields._('is_subscribed');

  static const GroupsFields city = GroupsFields._('city');

  static const GroupsFields country = GroupsFields._('country');

  static const GroupsFields verified = GroupsFields._('verified');

  static const GroupsFields description = GroupsFields._('description');

  static const GroupsFields wikiPage = GroupsFields._('wiki_page');

  static const GroupsFields membersCount = GroupsFields._('members_count');

  static const GroupsFields counters = GroupsFields._('counters');

  static const GroupsFields cover = GroupsFields._('cover');

  static const GroupsFields canPost = GroupsFields._('can_post');

  static const GroupsFields canSeeAllPosts = GroupsFields._('can_see_all_posts');

  static const GroupsFields activity = GroupsFields._('activity');

  static const GroupsFields fixedPost = GroupsFields._('fixed_post');

  static const GroupsFields canCreateTopic = GroupsFields._('can_create_topic');

  static const GroupsFields canUploadVideo = GroupsFields._('can_upload_video');

  static const GroupsFields hasPhoto = GroupsFields._('has_photo');

  static const GroupsFields status = GroupsFields._('status');

  static const GroupsFields mainAlbumId = GroupsFields._('main_album_id');

  static const GroupsFields links = GroupsFields._('links');

  static const GroupsFields contacts = GroupsFields._('contacts');

  static const GroupsFields site = GroupsFields._('site');

  static const GroupsFields mainSection = GroupsFields._('main_section');

  static const GroupsFields trending = GroupsFields._('trending');

  static const GroupsFields canMessage = GroupsFields._('can_message');

  static const GroupsFields isMarketCartEnabled = GroupsFields._('is_market_cart_enabled');

  static const GroupsFields isMessagesBlocked = GroupsFields._('is_messages_blocked');

  static const GroupsFields canSendNotify = GroupsFields._('can_send_notify');

  static const GroupsFields onlineStatus = GroupsFields._('online_status');

  static const GroupsFields startDate = GroupsFields._('start_date');

  static const GroupsFields finishDate = GroupsFields._('finish_date');

  static const GroupsFields ageLimits = GroupsFields._('age_limits');

  static const GroupsFields banInfo = GroupsFields._('ban_info');

  static const GroupsFields actionButton = GroupsFields._('action_button');

  static const GroupsFields authorId = GroupsFields._('author_id');

  static const GroupsFields phone = GroupsFields._('phone');

  static const GroupsFields hasMarketApp = GroupsFields._('has_market_app');

  static const GroupsFields addresses = GroupsFields._('addresses');

  static const GroupsFields liveCovers = GroupsFields._('live_covers');

  static const GroupsFields isAdult = GroupsFields._('is_adult');

  static const GroupsFields canSubscribePosts = GroupsFields._('can_subscribe_posts');

  static const GroupsFields warningNotification = GroupsFields._('warning_notification');

  static const GroupsFields msgPushAllowed = GroupsFields._('msg_push_allowed');

  static const GroupsFields storiesArchiveCount = GroupsFields._('stories_archive_count');

  static const GroupsFields videoLiveLevel = GroupsFields._('video_live_level');

  static const GroupsFields videoLiveCount = GroupsFields._('video_live_count');

  static const GroupsFields clipsCount = GroupsFields._('clips_count');

  static List get values => const ['market', 'member_status', 'is_favorite', 'is_subscribed', 'city', 'country', 'verified', 'description', 'wiki_page', 'members_count', 'counters', 'cover', 'can_post', 'can_see_all_posts', 'activity', 'fixed_post', 'can_create_topic', 'can_upload_video', 'has_photo', 'status', 'main_album_id', 'links', 'contacts', 'site', 'main_section', 'trending', 'can_message', 'is_market_cart_enabled', 'is_messages_blocked', 'can_send_notify', 'online_status', 'start_date', 'finish_date', 'age_limits', 'ban_info', 'action_button', 'author_id', 'phone', 'has_market_app', 'addresses', 'live_covers', 'is_adult', 'can_subscribe_posts', 'warning_notification', 'msg_push_allowed', 'stories_archive_count', 'video_live_level', 'video_live_count', 'clips_count'];

  @override
  String toString() => '$value';
}
