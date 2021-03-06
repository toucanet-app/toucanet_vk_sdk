import '../../objects/vk_objects.dart';

class VKPagesGetTitlesResponse {
  final List<VKPagesWikipage> pagesGetTitlesResponse;

  const VKPagesGetTitlesResponse({
    this.pagesGetTitlesResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pages_getTitles_response': pagesGetTitlesResponse
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPagesGetTitlesResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPagesGetTitlesResponse(
      pagesGetTitlesResponse: map['pages_getTitles_response']
          ?.map<List<VKPagesWikipage>>(
            (item) => VKPagesWikipage.fromMap(item),
          )
          ?.toList(),
    );
  }
}
