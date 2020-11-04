import 'audio_audio.dart';
import 'messages_audio_message.dart';
import 'docs_doc.dart';
import 'messages_graffiti.dart';
import 'base_link.dart';
import 'photos_photo.dart';
import 'messages_history_message_attachment_type.dart';
import 'video_video.dart';
import 'package:meta/meta.dart';

class MessagesHistoryMessageAttachment {
  final AudioAudio audio;

  final MessagesAudioMessage audioMessage;

  final DocsDoc doc;

  final MessagesGraffiti graffiti;

  final BaseLink link;

  final BaseLink market;

  final PhotosPhoto photo;

  final BaseLink share;

  final MessagesHistoryMessageAttachmentType type;

  final VideoVideo video;

  final BaseLink wall;

  const MessagesHistoryMessageAttachment({
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

  factory MessagesHistoryMessageAttachment.fromMap(Map<String, dynamic> map) {
    return MessagesHistoryMessageAttachment(
      audio: AudioAudio.fromMap(map['audio']),
      audioMessage: MessagesAudioMessage.fromMap(map['audio_message']),
      doc: DocsDoc.fromMap(map['doc']),
      graffiti: MessagesGraffiti.fromMap(map['graffiti']),
      link: BaseLink.fromMap(map['link']),
      market: BaseLink.fromMap(map['market']),
      photo: PhotosPhoto.fromMap(map['photo']),
      share: BaseLink.fromMap(map['share']),
      type: MessagesHistoryMessageAttachmentType(map['type']),
      video: VideoVideo.fromMap(map['video']),
      wall: BaseLink.fromMap(map['wall']),
    );
  }
}
