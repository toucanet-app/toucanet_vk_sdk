

class GroupsCountersGroup {
  /// Addresses number.
  final int addresses;

  /// Photo albums number.
  final int albums;

  /// Audios number.
  final int audios;

  /// Audio playlists number.
  final int audioPlaylists;

  /// Docs number.
  final int docs;

  /// Market items number.
  final int market;

  /// Photos number.
  final int photos;

  /// Topics number.
  final int topics;

  /// Videos number.
  final int videos;

  const GroupsCountersGroup({
    this.addresses,
    this.albums,
    this.audios,
    this.audioPlaylists,
    this.docs,
    this.market,
    this.photos,
    this.topics,
    this.videos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': addresses,
      'albums': albums,
      'audios': audios,
      'audio_playlists': audioPlaylists,
      'docs': docs,
      'market': market,
      'photos': photos,
      'topics': topics,
      'videos': videos,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory GroupsCountersGroup.fromMap(Map<String, dynamic> map) {
    return GroupsCountersGroup(
      addresses: map['addresses'] as int,
      albums: map['albums'] as int,
      audios: map['audios'] as int,
      audioPlaylists: map['audio_playlists'] as int,
      docs: map['docs'] as int,
      market: map['market'] as int,
      photos: map['photos'] as int,
      topics: map['topics'] as int,
      videos: map['videos'] as int,
    );
  }
}
