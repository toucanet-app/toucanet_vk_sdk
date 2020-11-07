import '../../objects/vk_objects.dart';

class VKDocsSaveResponse {
  final VKDocsDocAttachmentType type;

  final VKMessagesAudioMessage audioMessage;

  final VKDocsDoc doc;

  final VKMessagesGraffiti graffiti;

  const VKDocsSaveResponse({
    this.type,
    this.audioMessage,
    this.doc,
    this.graffiti,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type?.value,
      'audio_message': audioMessage?.toMap(),
      'doc': doc?.toMap(),
      'graffiti': graffiti?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDocsSaveResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKDocsSaveResponse(
      type: VKDocsDocAttachmentType(map['type']),
      audioMessage: VKMessagesAudioMessage.fromMap(map['audio_message']),
      doc: VKDocsDoc.fromMap(map['doc']),
      graffiti: VKMessagesGraffiti.fromMap(map['graffiti']),
    );
  }
}
