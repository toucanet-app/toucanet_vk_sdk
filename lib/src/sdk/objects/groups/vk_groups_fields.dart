/// .
class VKGroupsFields {
  final String value;

  const VKGroupsFields._(this.value);

  factory VKGroupsFields(value) {
    if (!values.contains(value)) return null;
    return VKGroupsFields._(value);
  }

  static const VKGroupsFields actionButton = VKGroupsFields._('action_button');

  static const VKGroupsFields activity = VKGroupsFields._('activity');

  static const VKGroupsFields addresses = VKGroupsFields._('addresses');

  static const VKGroupsFields ageLimits = VKGroupsFields._('age_limits');

  static const VKGroupsFields authorId = VKGroupsFields._('author_id');

  static const VKGroupsFields banInfo = VKGroupsFields._('ban_info');

  static const VKGroupsFields canCreateTopic =
      VKGroupsFields._('can_create_topic');

  static const VKGroupsFields canMessage = VKGroupsFields._('can_message');

  static const VKGroupsFields canPost = VKGroupsFields._('can_post');

  static const VKGroupsFields canSeeAllPosts =
      VKGroupsFields._('can_see_all_posts');

  static const VKGroupsFields canSendNotify =
      VKGroupsFields._('can_send_notify');

  static const VKGroupsFields canSubscribePosts =
      VKGroupsFields._('can_subscribe_posts');

  static const VKGroupsFields canUploadVideo =
      VKGroupsFields._('can_upload_video');

  static const VKGroupsFields city = VKGroupsFields._('city');

  static const VKGroupsFields clipsCount = VKGroupsFields._('clips_count');

  static const VKGroupsFields contacts = VKGroupsFields._('contacts');

  static const VKGroupsFields counters = VKGroupsFields._('counters');

  static const VKGroupsFields country = VKGroupsFields._('country');

  static const VKGroupsFields cover = VKGroupsFields._('cover');

  static const VKGroupsFields description = VKGroupsFields._('description');

  static const VKGroupsFields finishDate = VKGroupsFields._('finish_date');

  static const VKGroupsFields fixedPost = VKGroupsFields._('fixed_post');

  static const VKGroupsFields hasMarketApp = VKGroupsFields._('has_market_app');

  static const VKGroupsFields hasPhoto = VKGroupsFields._('has_photo');

  static const VKGroupsFields isAdult = VKGroupsFields._('is_adult');

  static const VKGroupsFields isFavorite = VKGroupsFields._('is_favorite');

  static const VKGroupsFields isMarketCartEnabled =
      VKGroupsFields._('is_market_cart_enabled');

  static const VKGroupsFields isMessagesBlocked =
      VKGroupsFields._('is_messages_blocked');

  static const VKGroupsFields isSubscribed = VKGroupsFields._('is_subscribed');

  static const VKGroupsFields links = VKGroupsFields._('links');

  static const VKGroupsFields liveCovers = VKGroupsFields._('live_covers');

  static const VKGroupsFields mainAlbumId = VKGroupsFields._('main_album_id');

  static const VKGroupsFields mainSection = VKGroupsFields._('main_section');

  static const VKGroupsFields market = VKGroupsFields._('market');

  static const VKGroupsFields memberStatus = VKGroupsFields._('member_status');

  static const VKGroupsFields membersCount = VKGroupsFields._('members_count');

  static const VKGroupsFields msgPushAllowed =
      VKGroupsFields._('msg_push_allowed');

  static const VKGroupsFields onlineStatus = VKGroupsFields._('online_status');

  static const VKGroupsFields phone = VKGroupsFields._('phone');

  static const VKGroupsFields site = VKGroupsFields._('site');

  static const VKGroupsFields startDate = VKGroupsFields._('start_date');

  static const VKGroupsFields status = VKGroupsFields._('status');

  static const VKGroupsFields storiesArchiveCount =
      VKGroupsFields._('stories_archive_count');

  static const VKGroupsFields trending = VKGroupsFields._('trending');

  static const VKGroupsFields verified = VKGroupsFields._('verified');

  static const VKGroupsFields videoLiveCount =
      VKGroupsFields._('video_live_count');

  static const VKGroupsFields videoLiveLevel =
      VKGroupsFields._('video_live_level');

  static const VKGroupsFields warningNotification =
      VKGroupsFields._('warning_notification');

  static const VKGroupsFields wikiPage = VKGroupsFields._('wiki_page');

  static List get values => const [
        'market',
        'member_status',
        'is_favorite',
        'is_subscribed',
        'city',
        'country',
        'verified',
        'description',
        'wiki_page',
        'members_count',
        'counters',
        'cover',
        'can_post',
        'can_see_all_posts',
        'activity',
        'fixed_post',
        'can_create_topic',
        'can_upload_video',
        'has_photo',
        'status',
        'main_album_id',
        'links',
        'contacts',
        'site',
        'main_section',
        'trending',
        'can_message',
        'is_market_cart_enabled',
        'is_messages_blocked',
        'can_send_notify',
        'online_status',
        'start_date',
        'finish_date',
        'age_limits',
        'ban_info',
        'action_button',
        'author_id',
        'phone',
        'has_market_app',
        'addresses',
        'live_covers',
        'is_adult',
        'can_subscribe_posts',
        'warning_notification',
        'msg_push_allowed',
        'stories_archive_count',
        'video_live_level',
        'video_live_count',
        'clips_count'
      ];

  @override
  String toString() => '$value';
}
