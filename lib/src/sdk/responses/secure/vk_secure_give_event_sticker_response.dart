class VKSecureGiveEventStickerResponse {
  final List<Map<String, dynamic>> secureGiveEventStickerResponse;

  const VKSecureGiveEventStickerResponse({
    this.secureGiveEventStickerResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secure_giveEventSticker_response': secureGiveEventStickerResponse,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKSecureGiveEventStickerResponse.fromMap(Map<String, dynamic> map) {
    return VKSecureGiveEventStickerResponse(
      secureGiveEventStickerResponse:
          map['secure_giveEventSticker_response'] as List<Map<String, dynamic>>,
    );
  }
}
