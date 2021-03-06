import 'package:meta/meta.dart';

import '../audio/vk_audio_audio.dart';
import '../base/vk_base_link.dart';
import '../base/vk_base_sticker.dart';
import '../docs/vk_docs_doc.dart';
import '../gifts/vk_gifts_layout.dart';
import '../market/vk_market_market_album.dart';
import '../market/vk_market_market_item.dart';
import '../photos/vk_photos_photo.dart';
import '../stories/vk_stories_story.dart';
import '../video/vk_video_video.dart';
import '../wall/vk_wall_wall_comment.dart';
import '../wall/vk_wall_wallpost_full.dart';
import 'vk_messages_audio_message.dart';
import 'vk_messages_graffiti.dart';
import 'vk_messages_message_attachment_type.dart';

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
    if (map == null) return null;

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
