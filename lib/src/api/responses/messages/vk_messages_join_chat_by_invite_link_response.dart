class VKMessagesJoinChatByInviteLinkResponse {
  final int chatId;

  const VKMessagesJoinChatByInviteLinkResponse({
    this.chatId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chat_id': chatId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesJoinChatByInviteLinkResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMessagesJoinChatByInviteLinkResponse(
      chatId: map['chat_id'] as int,
    );
  }
}
