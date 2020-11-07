import '../../objects/vk_objects.dart';

class VKPagesGetTitlesResponse {
  final List<VKPagesWikipage> pagesGetTitlesResponse;

  const VKPagesGetTitlesResponse({
    this.pagesGetTitlesResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pages_getTitles_response':
          pagesGetTitlesResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPagesGetTitlesResponse.fromMap(Map<String, dynamic> map) {
    return VKPagesGetTitlesResponse(
      pagesGetTitlesResponse: map['pages_getTitles_response']
          ?.map((item) => VKPagesWikipage.fromMap(item)),
    );
  }
}
