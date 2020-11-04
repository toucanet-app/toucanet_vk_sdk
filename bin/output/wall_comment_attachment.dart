import 'audio_audio.dart';
import 'docs_doc.dart';
import 'base_link.dart';
import 'market_market_item.dart';
import 'market_market_album.dart';
import 'wall_attached_note.dart';
import 'pages_wikipage_full.dart';
import 'photos_photo.dart';
import 'base_sticker.dart';
import 'wall_comment_attachment_type.dart';
import 'video_video.dart';
import 'package:meta/meta.dart';

class WallCommentAttachment {
  final AudioAudio audio;

  final DocsDoc doc;

  final BaseLink link;

  final MarketMarketItem market;

  final MarketMarketAlbum marketMarketAlbum;

  final WallAttachedNote note;

  final PagesWikipageFull page;

  final PhotosPhoto photo;

  final BaseSticker sticker;

  final WallCommentAttachmentType type;

  final VideoVideo video;

  const WallCommentAttachment({
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

  factory WallCommentAttachment.fromMap(Map<String, dynamic> map) {
    return WallCommentAttachment(
      audio: AudioAudio.fromMap(map['audio']),
      doc: DocsDoc.fromMap(map['doc']),
      link: BaseLink.fromMap(map['link']),
      market: MarketMarketItem.fromMap(map['market']),
      marketMarketAlbum: MarketMarketAlbum.fromMap(map['market_market_album']),
      note: WallAttachedNote.fromMap(map['note']),
      page: PagesWikipageFull.fromMap(map['page']),
      photo: PhotosPhoto.fromMap(map['photo']),
      sticker: BaseSticker.fromMap(map['sticker']),
      type: WallCommentAttachmentType(map['type']),
      video: VideoVideo.fromMap(map['video']),
    );
  }
}
