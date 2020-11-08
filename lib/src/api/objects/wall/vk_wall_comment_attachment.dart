import 'package:meta/meta.dart';

import '../audio/vk_audio_audio.dart';
import '../base/vk_base_link.dart';
import '../base/vk_base_sticker.dart';
import '../docs/vk_docs_doc.dart';
import '../market/vk_market_market_album.dart';
import '../market/vk_market_market_item.dart';
import '../pages/vk_pages_wikipage_full.dart';
import '../photos/vk_photos_photo.dart';
import '../video/vk_video_video.dart';
import 'vk_wall_attached_note.dart';
import 'vk_wall_comment_attachment_type.dart';

class VKWallCommentAttachment {
  final VKAudioAudio audio;

  final VKDocsDoc doc;

  final VKBaseLink link;

  final VKMarketMarketItem market;

  final VKMarketMarketAlbum marketMarketAlbum;

  final VKWallAttachedNote note;

  final VKPagesWikipageFull page;

  final VKPhotosPhoto photo;

  final VKBaseSticker sticker;

  final VKWallCommentAttachmentType type;

  final VKVideoVideo video;

  const VKWallCommentAttachment({
    this.audio,
    this.doc,
    this.link,
    this.market,
    this.marketMarketAlbum,
    this.note,
    this.page,
    this.photo,
    this.sticker,
    @required this.type,
    this.video,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audio': audio?.toMap(),
      'doc': doc?.toMap(),
      'link': link?.toMap(),
      'market': market?.toMap(),
      'market_market_album': marketMarketAlbum?.toMap(),
      'note': note?.toMap(),
      'page': page?.toMap(),
      'photo': photo?.toMap(),
      'sticker': sticker?.toMap(),
      'type': type?.value,
      'video': video?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKWallCommentAttachment.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKWallCommentAttachment(
      audio: VKAudioAudio.fromMap(map['audio']),
      doc: VKDocsDoc.fromMap(map['doc']),
      link: VKBaseLink.fromMap(map['link']),
      market: VKMarketMarketItem.fromMap(map['market']),
      marketMarketAlbum:
          VKMarketMarketAlbum.fromMap(map['market_market_album']),
      note: VKWallAttachedNote.fromMap(map['note']),
      page: VKPagesWikipageFull.fromMap(map['page']),
      photo: VKPhotosPhoto.fromMap(map['photo']),
      sticker: VKBaseSticker.fromMap(map['sticker']),
      type: VKWallCommentAttachmentType(map['type']),
      video: VKVideoVideo.fromMap(map['video']),
    );
  }
}
