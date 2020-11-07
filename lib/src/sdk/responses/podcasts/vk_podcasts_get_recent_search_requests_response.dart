class VKPodcastsGetRecentSearchRequestsResponse {
  final List<String> podcastsGetRecentSearchRequestsResponse;

  const VKPodcastsGetRecentSearchRequestsResponse({
    this.podcastsGetRecentSearchRequestsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podcasts_getRecentSearchRequests_response':
          podcastsGetRecentSearchRequestsResponse,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPodcastsGetRecentSearchRequestsResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPodcastsGetRecentSearchRequestsResponse(
      podcastsGetRecentSearchRequestsResponse:
          map['podcasts_getRecentSearchRequests_response'] as List<String>,
    );
  }
}
