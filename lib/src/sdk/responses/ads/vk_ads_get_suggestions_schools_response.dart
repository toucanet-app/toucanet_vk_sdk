import '../../objects/vk_objects.dart';

class VKAdsGetSuggestionsSchoolsResponse {
  final List<VKAdsTargSuggestionsSchools> adsGetSuggestionsSchoolsResponse;

  const VKAdsGetSuggestionsSchoolsResponse({
    this.adsGetSuggestionsSchoolsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ads_getSuggestions_schools_response':
          adsGetSuggestionsSchoolsResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsGetSuggestionsSchoolsResponse.fromMap(Map<String, dynamic> map) {
    return VKAdsGetSuggestionsSchoolsResponse(
      adsGetSuggestionsSchoolsResponse:
          map['ads_getSuggestions_schools_response']
              ?.map((item) => VKAdsTargSuggestionsSchools.fromMap(item)),
    );
  }
}
