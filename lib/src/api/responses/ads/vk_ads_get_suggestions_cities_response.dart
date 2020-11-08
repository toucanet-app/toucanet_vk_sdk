import '../../objects/vk_objects.dart';

class VKAdsGetSuggestionsCitiesResponse {
  final List<VKAdsTargSuggestionsCities> adsGetSuggestionsCitiesResponse;

  const VKAdsGetSuggestionsCitiesResponse({
    this.adsGetSuggestionsCitiesResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ads_getSuggestions_cities_response': adsGetSuggestionsCitiesResponse
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsGetSuggestionsCitiesResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsGetSuggestionsCitiesResponse(
      adsGetSuggestionsCitiesResponse: map['ads_getSuggestions_cities_response']
          ?.map<List<VKAdsTargSuggestionsCities>>(
            (item) => VKAdsTargSuggestionsCities.fromMap(item),
          )
          ?.toList(),
    );
  }
}
