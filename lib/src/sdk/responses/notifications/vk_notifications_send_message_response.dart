import '../../objects/vk_objects.dart';

class VKNotificationsSendMessageResponse {
  final List<VKNotificationsSendMessageItem> notificationsSendMessageResponse;

  const VKNotificationsSendMessageResponse({
    this.notificationsSendMessageResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notifications_sendMessage_response': notificationsSendMessageResponse
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNotificationsSendMessageResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNotificationsSendMessageResponse(
      notificationsSendMessageResponse:
          map['notifications_sendMessage_response']
              ?.map<List<VKNotificationsSendMessageItem>>(
                (item) => VKNotificationsSendMessageItem.fromMap(item),
              )
              ?.toList(),
    );
  }
}
