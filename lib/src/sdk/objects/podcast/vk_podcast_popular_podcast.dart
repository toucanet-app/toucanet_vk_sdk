class VKPodcastPopularPodcast {
  final int ownerId;

  final String ownerTitle;

  final String url;

  const VKPodcastPopularPodcast({
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

  factory VKPodcastPopularPodcast.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPodcastPopularPodcast(
      ownerId: map['owner_id'] as int,
      ownerTitle: map['owner_title'] as String,
      url: map['url'] as String,
    );
  }
}
