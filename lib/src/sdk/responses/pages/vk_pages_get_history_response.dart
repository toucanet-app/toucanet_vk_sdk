import '../../objects/vk_objects.dart';

class VKPagesGetHistoryResponse {
  final List<VKPagesWikipageHistory> pagesGetHistoryResponse;

  const VKPagesGetHistoryResponse({
    this.pagesGetHistoryResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pages_getHistory_response':
          pagesGetHistoryResponse?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPagesGetHistoryResponse.fromMap(Map<String, dynamic> map) {
    return VKPagesGetHistoryResponse(
      pagesGetHistoryResponse: map['pages_getHistory_response']
          ?.map((item) => VKPagesWikipageHistory.fromMap(item)),
    );
  }
}
