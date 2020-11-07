import '../../objects/vk_objects.dart';

class VKMessagesGetHistoryAttachmentsResponse {
  final List<VKMessagesHistoryAttachment> items;

  /// Value for pagination.
  final String nextFrom;

  const VKMessagesGetHistoryAttachmentsResponse({
    this.items,
    this.nextFrom,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items?.map((item) => item?.toMap()),
      'next_from': nextFrom,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesGetHistoryAttachmentsResponse.fromMap(
      Map<String, dynamic> map) {
    return VKMessagesGetHistoryAttachmentsResponse(
      items: map['items']
          ?.map((item) => VKMessagesHistoryAttachment.fromMap(item)),
      nextFrom: map['next_from'] as String,
    );
  }
}
