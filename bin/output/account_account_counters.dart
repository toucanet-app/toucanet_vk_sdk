

class AccountAccountCounters {
  /// New app requests number.
  final int appRequests;

  /// New events number.
  final int events;

  /// New faves number.
  final int faves;

  /// New friends requests number.
  final int friends;

  /// New friends suggestions number.
  final int friendsSuggestions;

  /// New friends recommendations number.
  final int friendsRecommendations;

  /// New gifts number.
  final int gifts;

  /// New groups number.
  final int groups;

  /// .
  final int menuDiscoverBadge;

  final int menuClipsBadge;

  /// New messages number.
  final int messages;

  /// New memories number.
  final int memories;

  /// New notes number.
  final int notes;

  /// New notifications number.
  final int notifications;

  /// New photo tags number.
  final int photos;

  /// New sdk number.
  final int sdk;

  const AccountAccountCounters({
    this.appRequests,
    this.events,
    this.faves,
    this.friends,
    this.friendsSuggestions,
    this.friendsRecommendations,
    this.gifts,
    this.groups,
    this.menuDiscoverBadge,
    this.menuClipsBadge,
    this.messages,
    this.memories,
    this.notes,
    this.notifications,
    this.photos,
    this.sdk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'app_requests': appRequests,
      'events': events,
      'faves': faves,
      'friends': friends,
      'friends_suggestions': friendsSuggestions,
      'friends_recommendations': friendsRecommendations,
      'gifts': gifts,
      'groups': groups,
      'menu_discover_badge': menuDiscoverBadge,
      'menu_clips_badge': menuClipsBadge,
      'messages': messages,
      'memories': memories,
      'notes': notes,
      'notifications': notifications,
      'photos': photos,
      'sdk': sdk,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AccountAccountCounters.fromMap(Map<String, dynamic> map) {
    return AccountAccountCounters(
      appRequests: map['app_requests'] as int,
      events: map['events'] as int,
      faves: map['faves'] as int,
      friends: map['friends'] as int,
      friendsSuggestions: map['friends_suggestions'] as int,
      friendsRecommendations: map['friends_recommendations'] as int,
      gifts: map['gifts'] as int,
      groups: map['groups'] as int,
      menuDiscoverBadge: map['menu_discover_badge'] as int,
      menuClipsBadge: map['menu_clips_badge'] as int,
      messages: map['messages'] as int,
      memories: map['memories'] as int,
      notes: map['notes'] as int,
      notifications: map['notifications'] as int,
      photos: map['photos'] as int,
      sdk: map['sdk'] as int,
    );
  }
}
