import '../../objects/vk_objects.dart';

class VKAdsGetSuggestionsRegionsResponse {
  final List<VKAdsTargSuggestionsRegions> adsGetSuggestionsRegionsResponse;

  const VKAdsGetSuggestionsRegionsResponse({
    this.adsGetSuggestionsRegionsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ads_getSuggestions_regions_response': adsGetSuggestionsRegionsResponse
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsGetSuggestionsRegionsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsGetSuggestionsRegionsResponse(
      adsGetSuggestionsRegionsResponse:
          map['ads_getSuggestions_regions_response']
              ?.map<List<VKAdsTargSuggestionsRegions>>(
                (item) => VKAdsTargSuggestionsRegions.fromMap(item),
              )
              ?.toList(),
    );
  }
}
