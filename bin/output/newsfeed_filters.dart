/// .
class NewsfeedFilters {
  final String value;

  const NewsfeedFilters._(this.value);

  factory NewsfeedFilters(value) {
    if (!values.contains(value)) return null;

    return NewsfeedFilters._(value);
  }

  static const NewsfeedFilters post = NewsfeedFilters._('post');

  static const NewsfeedFilters photo = NewsfeedFilters._('photo');

  static const NewsfeedFilters photoTag = NewsfeedFilters._('photo_tag');

  static const NewsfeedFilters wallPhoto = NewsfeedFilters._('wall_photo');

  static const NewsfeedFilters friend = NewsfeedFilters._('friend');

  static const NewsfeedFilters recommendedGroups =
      NewsfeedFilters._('recommended_groups');

  static const NewsfeedFilters note = NewsfeedFilters._('note');

  static const NewsfeedFilters audio = NewsfeedFilters._('audio');

  static const NewsfeedFilters video = NewsfeedFilters._('video');

  static const NewsfeedFilters audioPlaylist =
      NewsfeedFilters._('audio_playlist');

  static const NewsfeedFilters gamesCarousel =
      NewsfeedFilters._('games_carousel');

  static const NewsfeedFilters clip = NewsfeedFilters._('clip');

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
