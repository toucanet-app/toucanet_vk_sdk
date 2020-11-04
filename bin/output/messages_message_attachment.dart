import 'audio_audio.dart';
import 'messages_audio_message.dart';
import 'docs_doc.dart';
import 'gifts_layout.dart';
import 'messages_graffiti.dart';
import 'base_link.dart';
import 'market_market_item.dart';
import 'market_market_album.dart';
import 'photos_photo.dart';
import 'base_sticker.dart';
import 'stories_story.dart';
import 'messages_message_attachment_type.dart';
import 'video_video.dart';
import 'wall_wallpost_full.dart';
import 'wall_wall_comment.dart';
import 'package:meta/meta.dart';

class MessagesMessageAttachment {
  final AudioAudio audio;

  final MessagesAudioMessage audioMessage;

  final DocsDoc doc;

  final GiftsLayout gift;

  final MessagesGraffiti graffiti;

  final BaseLink link;

  final MarketMarketItem market;

  final MarketMarketAlbum marketMarketAlbum;

  final PhotosPhoto photo;

  final BaseSticker sticker;

  final StoriesStory story;

  final MessagesMessageAttachmentType type;

  final VideoVideo video;

  final WallWallpostFull wall;

  final WallWallComment wallReply;

  const MessagesMessageAttachment({
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

  factory MessagesMessageAttachment.fromMap(Map<String, dynamic> map) {
    return MessagesMessageAttachment(
      audio: AudioAudio.fromMap(map['audio']),
      audioMessage: MessagesAudioMessage.fromMap(map['audio_message']),
      doc: DocsDoc.fromMap(map['doc']),
      gift: GiftsLayout.fromMap(map['gift']),
      graffiti: MessagesGraffiti.fromMap(map['graffiti']),
      link: BaseLink.fromMap(map['link']),
      market: MarketMarketItem.fromMap(map['market']),
      marketMarketAlbum: MarketMarketAlbum.fromMap(map['market_market_album']),
      photo: PhotosPhoto.fromMap(map['photo']),
      sticker: BaseSticker.fromMap(map['sticker']),
      story: StoriesStory.fromMap(map['story']),
      type: MessagesMessageAttachmentType(map['type']),
      video: VideoVideo.fromMap(map['video']),
      wall: WallWallpostFull.fromMap(map['wall']),
      wallReply: WallWallComment.fromMap(map['wall_reply']),
    );
  }
}
