import '../../objects/vk_objects.dart';

class VKAdsGetSuggestionsResponse {
  final List<VKAdsTargSuggestions> adsGetSuggestionsResponse;

  const VKAdsGetSuggestionsResponse({
    this.adsGetSuggestionsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ads_getSuggestions_response':
          adsGetSuggestionsResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsGetSuggestionsResponse.fromMap(Map<String, dynamic> map) {
    return VKAdsGetSuggestionsResponse(
      adsGetSuggestionsResponse: map['ads_getSuggestions_response']
          ?.map((item) => VKAdsTargSuggestions.fromMap(item)),
    );
  }
}
