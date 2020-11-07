/// .
class VKNewsfeedFilters {
  final String value;

  const VKNewsfeedFilters._(this.value);

  factory VKNewsfeedFilters(value) {
    if (!values.contains(value)) return null;
    return VKNewsfeedFilters._(value);
  }

  static const VKNewsfeedFilters audio = VKNewsfeedFilters._('audio');

  static const VKNewsfeedFilters audioPlaylist =
      VKNewsfeedFilters._('audio_playlist');

  static const VKNewsfeedFilters clip = VKNewsfeedFilters._('clip');

  static const VKNewsfeedFilters friend = VKNewsfeedFilters._('friend');

  static const VKNewsfeedFilters gamesCarousel =
      VKNewsfeedFilters._('games_carousel');

  static const VKNewsfeedFilters note = VKNewsfeedFilters._('note');

  static const VKNewsfeedFilters photo = VKNewsfeedFilters._('photo');

  static const VKNewsfeedFilters photoTag = VKNewsfeedFilters._('photo_tag');

  static const VKNewsfeedFilters post = VKNewsfeedFilters._('post');

  static const VKNewsfeedFilters recommendedGroups =
      VKNewsfeedFilters._('recommended_groups');

  static const VKNewsfeedFilters video = VKNewsfeedFilters._('video');

  static const VKNewsfeedFilters wallPhoto = VKNewsfeedFilters._('wall_photo');

  static List get values => const [
        'post',
        'photo',
        'photo_tag',
        'wall_photo',
        'friend',
        'recommended_groups',
        'note',
        'audio',
        'video',
        'audio_playlist',
        'games_carousel',
        'clip'
      ];

  @override
  String toString() => '$value';
}
