class VKSecureSendNotificationResponse {
  /// The list of User ID.
  final List<int> secureSendNotificationResponse;

  const VKSecureSendNotificationResponse({
    this.secureSendNotificationResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secure_sendNotification_response': secureSendNotificationResponse,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKSecureSendNotificationResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKSecureSendNotificationResponse(
      secureSendNotificationResponse:
          map['secure_sendNotification_response'] as List<int>,
    );
  }
}
