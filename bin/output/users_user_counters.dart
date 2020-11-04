

class UsersUserCounters {
  /// Albums number.
  final int albums;

  /// Audios number.
  final int audios;

  /// Followers number.
  final int followers;

  /// Friends number.
  final int friends;

  /// Gifts number.
  final int gifts;

  /// Communities number.
  final int groups;

  /// Notes number.
  final int notes;

  /// Online friends number.
  final int onlineFriends;

  /// Public pages number.
  final int pages;

  /// Photos number.
  final int photos;

  /// Subscriptions number.
  final int subscriptions;

  /// Number of photos with user.
  final int userPhotos;

  /// Number of videos with user.
  final int userVideos;

  /// Videos number.
  final int videos;

  const UsersUserCounters({
    this.albums,
    this.audios,
    this.followers,
    this.friends,
    this.gifts,
    this.groups,
    this.notes,
    this.onlineFriends,
    this.pages,
    this.photos,
    this.subscriptions,
    this.userPhotos,
    this.userVideos,
    this.videos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'albums': albums,
      'audios': audios,
      'followers': followers,
      'friends': friends,
      'gifts': gifts,
      'groups': groups,
      'notes': notes,
      'online_friends': onlineFriends,
      'pages': pages,
      'photos': photos,
      'subscriptions': subscriptions,
      'user_photos': userPhotos,
      'user_videos': userVideos,
      'videos': videos,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory UsersUserCounters.fromMap(Map<String, dynamic> map) {
    return UsersUserCounters(
      albums: map['albums'] as int,
      audios: map['audios'] as int,
      followers: map['followers'] as int,
      friends: map['friends'] as int,
      gifts: map['gifts'] as int,
      groups: map['groups'] as int,
      notes: map['notes'] as int,
      onlineFriends: map['online_friends'] as int,
      pages: map['pages'] as int,
      photos: map['photos'] as int,
      subscriptions: map['subscriptions'] as int,
      userPhotos: map['user_photos'] as int,
      userVideos: map['user_videos'] as int,
      videos: map['videos'] as int,
    );
  }
}
