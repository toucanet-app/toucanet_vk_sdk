import '../../objects/vk_objects.dart';

class VKAdsGetSuggestionsResponse {
  final List<VKAdsTargSuggestions> adsGetSuggestionsResponse;

  const VKAdsGetSuggestionsResponse({
    this.adsGetSuggestionsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ads_getSuggestions_response': adsGetSuggestionsResponse
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsGetSuggestionsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsGetSuggestionsResponse(
      adsGetSuggestionsResponse: map['ads_getSuggestions_response']
          ?.map<List<VKAdsTargSuggestions>>(
            (item) => VKAdsTargSuggestions.fromMap(item),
          )
          ?.toList(),
    );
  }
}
