import '../../objects/vk_objects.dart';

class VKAdsGetSuggestionsCitiesResponse {
  final List<VKAdsTargSuggestionsCities> adsGetSuggestionsCitiesResponse;

  const VKAdsGetSuggestionsCitiesResponse({
    this.adsGetSuggestionsCitiesResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ads_getSuggestions_cities_response':
          adsGetSuggestionsCitiesResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsGetSuggestionsCitiesResponse.fromMap(Map<String, dynamic> map) {
    return VKAdsGetSuggestionsCitiesResponse(
      adsGetSuggestionsCitiesResponse: map['ads_getSuggestions_cities_response']
          ?.map((item) => VKAdsTargSuggestionsCities.fromMap(item)),
    );
  }
}
