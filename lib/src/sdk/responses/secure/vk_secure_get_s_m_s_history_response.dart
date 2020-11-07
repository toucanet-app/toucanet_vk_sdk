import '../../objects/vk_objects.dart';

class VKSecureGetSMSHistoryResponse {
  final List<VKSecureSmsNotification> secureGetSMSHistoryResponse;

  const VKSecureGetSMSHistoryResponse({
    this.secureGetSMSHistoryResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secure_getSMSHistory_response':
          secureGetSMSHistoryResponse?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKSecureGetSMSHistoryResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKSecureGetSMSHistoryResponse(
      secureGetSMSHistoryResponse: map['secure_getSMSHistory_response']
          ?.map((item) => VKSecureSmsNotification.fromMap(item))
          ?.toList(),
    );
  }
}
