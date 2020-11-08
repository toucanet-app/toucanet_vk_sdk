import 'package:meta/meta.dart';

import '../audio/vk_audio_audio.dart';
import '../base/vk_base_link.dart';
import '../docs/vk_docs_doc.dart';
import '../events/vk_events_event_attach.dart';
import '../groups/vk_groups_group_attach.dart';
import '../market/vk_market_market_album.dart';
import '../market/vk_market_market_item.dart';
import '../pages/vk_pages_wikipage_full.dart';
import '../photos/vk_photos_photo.dart';
import '../photos/vk_photos_photo_album.dart';
import '../polls/vk_polls_poll.dart';
import '../video/vk_video_video.dart';
import 'vk_wall_app_post.dart';
import 'vk_wall_attached_note.dart';
import 'vk_wall_graffiti.dart';
import 'vk_wall_posted_photo.dart';
import 'vk_wall_wallpost_attachment_type.dart';

class VKWallWallpostAttachment {
  /// Access key for the audio.
  final String accessKey;

  final VKPhotosPhotoAlbum album;

  final VKWallAppPost app;

  final VKAudioAudio audio;

  final VKDocsDoc doc;

  final VKEventsEventAttach event;

  final VKGroupsGroupAttach group;

  final VKWallGraffiti graffiti;

  final VKBaseLink link;

  final VKMarketMarketItem market;

  final VKMarketMarketAlbum marketAlbum;

  final VKWallAttachedNote note;

  final VKPagesWikipageFull page;

  final VKPhotosPhoto photo;

  /// The list of String ID of photo.
  final List<String> photosList;

  final VKPollsPoll poll;

  final VKWallPostedPhoto postedPhoto;

  final VKWallWallpostAttachmentType type;

  final VKVideoVideo video;

  const VKWallWallpostAttachment({
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

  factory VKWallWallpostAttachment.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKWallWallpostAttachment(
      accessKey: map['access_key'] as String,
      album: VKPhotosPhotoAlbum.fromMap(map['album']),
      app: VKWallAppPost.fromMap(map['app']),
      audio: VKAudioAudio.fromMap(map['audio']),
      doc: VKDocsDoc.fromMap(map['doc']),
      event: VKEventsEventAttach.fromMap(map['event']),
      group: VKGroupsGroupAttach.fromMap(map['group']),
      graffiti: VKWallGraffiti.fromMap(map['graffiti']),
      link: VKBaseLink.fromMap(map['link']),
      market: VKMarketMarketItem.fromMap(map['market']),
      marketAlbum: VKMarketMarketAlbum.fromMap(map['market_album']),
      note: VKWallAttachedNote.fromMap(map['note']),
      page: VKPagesWikipageFull.fromMap(map['page']),
      photo: VKPhotosPhoto.fromMap(map['photo']),
      photosList: map['photos_list'] as List<String>,
      poll: VKPollsPoll.fromMap(map['poll']),
      postedPhoto: VKWallPostedPhoto.fromMap(map['posted_photo']),
      type: VKWallWallpostAttachmentType(map['type']),
      video: VKVideoVideo.fromMap(map['video']),
    );
  }
}
