import '../../objects/vk_objects.dart';

class VKPodcastsGetPopularResponse {
  final List<VKPodcastPopularPodcast> podcastsGetPopularResponse;

  const VKPodcastsGetPopularResponse({
    this.podcastsGetPopularResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podcasts_getPopular_response': podcastsGetPopularResponse
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPodcastsGetPopularResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPodcastsGetPopularResponse(
      podcastsGetPopularResponse: map['podcasts_getPopular_response']
          ?.map<List<VKPodcastPopularPodcast>>(
            (item) => VKPodcastPopularPodcast.fromMap(item),
          )
          ?.toList(),
    );
  }
}
