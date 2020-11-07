import 'package:meta/meta.dart';

class VKPodcastPodcast {
  /// ID of the podcast's owner.
  final int ownerId;

  /// Podcast title.
  final String podcastTitle;

  const VKPodcastPodcast({
    @required this.ownerId,
    @required this.podcastTitle,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'owner_id': ownerId,
      'podcast_title': podcastTitle,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPodcastPodcast.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPodcastPodcast(
      ownerId: map['owner_id'] as int,
      podcastTitle: map['podcast_title'] as String,
    );
  }
}
