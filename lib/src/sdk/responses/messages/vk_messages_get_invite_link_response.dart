class VKMessagesGetInviteLinkResponse {
  final String link;

  const VKMessagesGetInviteLinkResponse({
    this.link,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'link': link,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesGetInviteLinkResponse.fromMap(Map<String, dynamic> map) {
    return VKMessagesGetInviteLinkResponse(
      link: map['link'] as String,
    );
  }
}
