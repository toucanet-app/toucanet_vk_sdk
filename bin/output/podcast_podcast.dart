import 'package:meta/meta.dart';

class PodcastPodcast {
  /// ID of the podcast's owner.
  final int ownerId;

  /// Podcast title.
  final String podcastTitle;

  const PodcastPodcast({
    @required this.ownerId,
    @required this.podcastTitle,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'owner_id': ownerId,
      'podcast_title': podcastTitle,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory PodcastPodcast.fromMap(Map<String, dynamic> map) {
    return PodcastPodcast(
      ownerId: map['owner_id'] as int,
      podcastTitle: map['podcast_title'] as String,
    );
  }
}
