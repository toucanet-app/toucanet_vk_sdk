class VKMessagesMarkAsImportantResponse {
  /// The list of Messages IDs.
  final List<int> messagesMarkAsImportantResponse;

  const VKMessagesMarkAsImportantResponse({
    this.messagesMarkAsImportantResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messages_markAsImportant_response': messagesMarkAsImportantResponse,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesMarkAsImportantResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMessagesMarkAsImportantResponse(
      messagesMarkAsImportantResponse:
          map['messages_markAsImportant_response'] as List<int>,
    );
  }
}
