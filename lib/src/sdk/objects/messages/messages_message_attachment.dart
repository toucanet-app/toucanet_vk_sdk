import 'package:meta/meta.dart';

import '../audio/audio_audio.dart';
import '../base/base_link.dart';
import '../base/base_sticker.dart';
import '../docs/docs_doc.dart';
import '../gifts/gifts_layout.dart';
import '../market/market_market_album.dart';
import '../market/market_market_item.dart';
import '../photos/photos_photo.dart';
import '../stories/stories_story.dart';
import '../video/video_video.dart';
import '../wall/wall_wall_comment.dart';
import '../wall/wall_wallpost_full.dart';
import 'messages_audio_message.dart';
import 'messages_graffiti.dart';
import 'messages_message_attachment_type.dart';

class VKMessagesMessageAttachment {
  final VKAudioAudio audio;

  final VKMessagesAudioMessage audioMessage;

  final VKDocsDoc doc;

  final VKGiftsLayout gift;

  final VKMessagesGraffiti graffiti;

  final VKBaseLink link;

  final VKMarketMarketItem market;

  final VKMarketMarketAlbum marketMarketAlbum;

  final VKPhotosPhoto photo;

  final VKBaseSticker sticker;

  final VKStoriesStory story;

  final VKMessagesMessageAttachmentType type;

  final VKVideoVideo video;

  final VKWallWallpostFull wall;

  final VKWallWallComment wallReply;

  const VKMessagesMessageAttachment({
    this.audio,
    this.audioMessage,
    this.doc,
    this.gift,
    this.graffiti,
    this.link,
    this.market,
    this.marketMarketAlbum,
    this.photo,
    this.sticker,
    this.story,
    @required this.type,
    this.video,
    this.wall,
    this.wallReply,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audio': audio?.toMap(),
      'audio_message': audioMessage?.toMap(),
      'doc': doc?.toMap(),
      'gift': gift?.toMap(),
      'graffiti': graffiti?.toMap(),
      'link': link?.toMap(),
      'market': market?.toMap(),
      'market_market_album': marketMarketAlbum?.toMap(),
      'photo': photo?.toMap(),
      'sticker': sticker?.toMap(),
      'story': story?.toMap(),
      'type': type?.value,
      'video': video?.toMap(),
      'wall': wall?.toMap(),
      'wall_reply': wallReply?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesMessageAttachment.fromMap(Map<String, dynamic> map) {
    return VKMessagesMessageAttachment(
      audio: VKAudioAudio.fromMap(map['audio']),
      audioMessage: VKMessagesAudioMessage.fromMap(map['audio_message']),
      doc: VKDocsDoc.fromMap(map['doc']),
      gift: VKGiftsLayout.fromMap(map['gift']),
      graffiti: VKMessagesGraffiti.fromMap(map['graffiti']),
      link: VKBaseLink.fromMap(map['link']),
      market: VKMarketMarketItem.fromMap(map['market']),
      marketMarketAlbum:
          VKMarketMarketAlbum.fromMap(map['market_market_album']),
      photo: VKPhotosPhoto.fromMap(map['photo']),
      sticker: VKBaseSticker.fromMap(map['sticker']),
      story: VKStoriesStory.fromMap(map['story']),
      type: VKMessagesMessageAttachmentType(map['type']),
      video: VKVideoVideo.fromMap(map['video']),
      wall: VKWallWallpostFull.fromMap(map['wall']),
      wallReply: VKWallWallComment.fromMap(map['wall_reply']),
    );
  }
}
