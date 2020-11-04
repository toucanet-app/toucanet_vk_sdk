

class PodcastPopularPodcast {
  final int ownerId;

  final String ownerTitle;

  final String url;

  const PodcastPopularPodcast({
    this.ownerId,
    this.ownerTitle,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'owner_id': ownerId,
      'owner_title': ownerTitle,
      'url': url,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory PodcastPopularPodcast.fromMap(Map<String, dynamic> map) {
    return PodcastPopularPodcast(
      ownerId: map['owner_id'] as int,
      ownerTitle: map['owner_title'] as String,
      url: map['url'] as String,
    );
  }
}
