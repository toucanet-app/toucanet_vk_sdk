class VKMessagesSendUserIdsResponse {
  final List<Map<String, dynamic>> messagesSendUserIdsResponse;

  const VKMessagesSendUserIdsResponse({
    this.messagesSendUserIdsResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messages_send_user_ids_response': messagesSendUserIdsResponse,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesSendUserIdsResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMessagesSendUserIdsResponse(
      messagesSendUserIdsResponse:
          map['messages_send_user_ids_response'] as List<Map<String, dynamic>>,
    );
  }
}
