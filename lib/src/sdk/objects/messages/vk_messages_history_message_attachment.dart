import 'package:meta/meta.dart';

import '../audio/vk_audio_audio.dart';
import '../base/vk_base_link.dart';
import '../docs/vk_docs_doc.dart';
import '../photos/vk_photos_photo.dart';
import '../video/vk_video_video.dart';
import 'vk_messages_audio_message.dart';
import 'vk_messages_graffiti.dart';
import 'vk_messages_history_message_attachment_type.dart';

class VKMessagesHistoryMessageAttachment {
  final VKAudioAudio audio;

  final VKMessagesAudioMessage audioMessage;

  final VKDocsDoc doc;

  final VKMessagesGraffiti graffiti;

  final VKBaseLink link;

  final VKBaseLink market;

  final VKPhotosPhoto photo;

  final VKBaseLink share;

  final VKMessagesHistoryMessageAttachmentType type;

  final VKVideoVideo video;

  final VKBaseLink wall;

  const VKMessagesHistoryMessageAttachment({
    this.audio,
    this.audioMessage,
    this.doc,
    this.graffiti,
    this.link,
    this.market,
    this.photo,
    this.share,
    @required this.type,
    this.video,
    this.wall,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audio': audio?.toMap(),
      'audio_message': audioMessage?.toMap(),
      'doc': doc?.toMap(),
      'graffiti': graffiti?.toMap(),
      'link': link?.toMap(),
      'market': market?.toMap(),
      'photo': photo?.toMap(),
      'share': share?.toMap(),
      'type': type?.value,
      'video': video?.toMap(),
      'wall': wall?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesHistoryMessageAttachment.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMessagesHistoryMessageAttachment(
      audio: VKAudioAudio.fromMap(map['audio']),
      audioMessage: VKMessagesAudioMessage.fromMap(map['audio_message']),
      doc: VKDocsDoc.fromMap(map['doc']),
      graffiti: VKMessagesGraffiti.fromMap(map['graffiti']),
      link: VKBaseLink.fromMap(map['link']),
      market: VKBaseLink.fromMap(map['market']),
      photo: VKPhotosPhoto.fromMap(map['photo']),
      share: VKBaseLink.fromMap(map['share']),
      type: VKMessagesHistoryMessageAttachmentType(map['type']),
      video: VKVideoVideo.fromMap(map['video']),
      wall: VKBaseLink.fromMap(map['wall']),
    );
  }
}
