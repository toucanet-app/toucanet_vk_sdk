import 'photos_photo_album.dart';
import 'wall_app_post.dart';
import 'audio_audio.dart';
import 'docs_doc.dart';
import 'events_event_attach.dart';
import 'groups_group_attach.dart';
import 'wall_graffiti.dart';
import 'base_link.dart';
import 'market_market_item.dart';
import 'market_market_album.dart';
import 'wall_attached_note.dart';
import 'pages_wikipage_full.dart';
import 'photos_photo.dart';
import 'polls_poll.dart';
import 'wall_posted_photo.dart';
import 'wall_wallpost_attachment_type.dart';
import 'video_video.dart';
import 'package:meta/meta.dart';

class WallWallpostAttachment {
  /// Access key for the audio.
  final String accessKey;

  final PhotosPhotoAlbum album;

  final WallAppPost app;

  final AudioAudio audio;

  final DocsDoc doc;

  final EventsEventAttach event;

  final GroupsGroupAttach group;

  final WallGraffiti graffiti;

  final BaseLink link;

  final MarketMarketItem market;

  final MarketMarketAlbum marketAlbum;

  final WallAttachedNote note;

  final PagesWikipageFull page;

  final PhotosPhoto photo;

  /// The list of String ID of photo.
  final List<String> photosList;

  final PollsPoll poll;

  final WallPostedPhoto postedPhoto;

  final WallWallpostAttachmentType type;

  final VideoVideo video;

  const WallWallpostAttachment({
    this.accessKey,
    this.album,
    this.app,
    this.audio,
    this.doc,
    this.event,
    this.group,
    this.graffiti,
    this.link,
    this.market,
    this.marketAlbum,
    this.note,
    this.page,
    this.photo,
    this.photosList,
    this.poll,
    this.postedPhoto,
    @required this.type,
    this.video,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access_key': accessKey,
      'album': album?.toMap(),
      'app': app?.toMap(),
      'audio': audio?.toMap(),
      'doc': doc?.toMap(),
      'event': event?.toMap(),
      'group': group?.toMap(),
      'graffiti': graffiti?.toMap(),
      'link': link?.toMap(),
      'market': market?.toMap(),
      'market_album': marketAlbum?.toMap(),
      'note': note?.toMap(),
      'page': page?.toMap(),
      'photo': photo?.toMap(),
      'photos_list': photosList,
      'poll': poll?.toMap(),
      'posted_photo': postedPhoto?.toMap(),
      'type': type?.value,
      'video': video?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory WallWallpostAttachment.fromMap(Map<String, dynamic> map) {
    return WallWallpostAttachment(
      accessKey: map['access_key'] as String,
      album: PhotosPhotoAlbum.fromMap(map['album']),
      app: WallAppPost.fromMap(map['app']),
      audio: AudioAudio.fromMap(map['audio']),
      doc: DocsDoc.fromMap(map['doc']),
      event: EventsEventAttach.fromMap(map['event']),
      group: GroupsGroupAttach.fromMap(map['group']),
      graffiti: WallGraffiti.fromMap(map['graffiti']),
      link: BaseLink.fromMap(map['link']),
      market: MarketMarketItem.fromMap(map['market']),
      marketAlbum: MarketMarketAlbum.fromMap(map['market_album']),
      note: WallAttachedNote.fromMap(map['note']),
      page: PagesWikipageFull.fromMap(map['page']),
      photo: PhotosPhoto.fromMap(map['photo']),
      photosList: map['photos_list'] as List<String>,
      poll: PollsPoll.fromMap(map['poll']),
      postedPhoto: WallPostedPhoto.fromMap(map['posted_photo']),
      type: WallWallpostAttachmentType(map['type']),
      video: VideoVideo.fromMap(map['video']),
    );
  }
}
