import '../../objects/vk_objects.dart';

class VKMessagesGetChatPreviewResponse {
  final VKMessagesChatPreview preview;

  final List<VKUsersUserFull> profiles;

  const VKMessagesGetChatPreviewResponse({
    this.preview,
    this.profiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preview': preview?.toMap(),
      'profiles': profiles?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesGetChatPreviewResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMessagesGetChatPreviewResponse(
      preview: VKMessagesChatPreview.fromMap(map['preview']),
      profiles: map['profiles']
          ?.map((item) => VKUsersUserFull.fromMap(item))
          ?.toList(),
    );
  }
}
