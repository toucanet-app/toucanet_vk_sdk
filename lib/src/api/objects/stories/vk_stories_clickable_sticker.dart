import 'package:meta/meta.dart';

import '../apps/vk_apps_app_min.dart';
import '../audio/vk_audio_audio.dart';
import '../base/vk_base_link.dart';
import '../market/vk_market_market_item.dart';
import '../polls/vk_polls_poll.dart';
import 'vk_stories_clickable_area.dart';

class VKStoriesClickableSticker {
  final List<VKStoriesClickableArea> clickableArea;

  /// Clickable sticker ID.
  final int id;

  final String hashtag;

  final VKBaseLink linkObject;

  final String mention;

  final String tooltipText;

  final int ownerId;

  final int storyId;

  final String question;

  final String questionButton;

  final int placeId;

  final VKMarketMarketItem marketItem;

  final VKAudioAudio audio;

  final int audioStartTime;

  final String style;

  final String type;

  final String subtype;

  final int postOwnerId;

  final int postId;

  final VKPollsPoll poll;

  /// Color, hex format.
  final String color;

  /// Sticker ID.
  final int stickerId;

  /// Sticker pack ID.
  final int stickerPackId;

  final VKAppsAppMin app;

  /// Additional context for app sticker.
  final String appContext;

  /// Whether current user has unread interaction with this app.
  final bool hasNewInteractions;

  /// Whether current user allowed broadcast notify from this app.
  final bool isBroadcastNotifyAllowed;

  const VKStoriesClickableSticker({
    @required this.clickableArea,
    @required this.id,
    this.hashtag,
    this.linkObject,
    this.mention,
    this.tooltipText,
    this.ownerId,
    this.storyId,
    this.question,
    this.questionButton,
    this.placeId,
    this.marketItem,
    this.audio,
    this.audioStartTime,
    this.style,
    @required this.type,
    this.subtype,
    this.postOwnerId,
    this.postId,
    this.poll,
    this.color,
    this.stickerId,
    this.stickerPackId,
    this.app,
    this.appContext,
    this.hasNewInteractions,
    this.isBroadcastNotifyAllowed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clickable_area': clickableArea
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'id': id,
      'hashtag': hashtag,
      'link_object': linkObject?.toMap(),
      'mention': mention,
      'tooltip_text': tooltipText,
      'owner_id': ownerId,
      'story_id': storyId,
      'question': question,
      'question_button': questionButton,
      'place_id': placeId,
      'market_item': marketItem?.toMap(),
      'audio': audio?.toMap(),
      'audio_start_time': audioStartTime,
      'style': style,
      'type': type,
      'subtype': subtype,
      'post_owner_id': postOwnerId,
      'post_id': postId,
      'poll': poll?.toMap(),
      'color': color,
      'sticker_id': stickerId,
      'sticker_pack_id': stickerPackId,
      'app': app?.toMap(),
      'app_context': appContext,
      'has_new_interactions': hasNewInteractions,
      'is_broadcast_notify_allowed': isBroadcastNotifyAllowed,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStoriesClickableSticker.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKStoriesClickableSticker(
      clickableArea: map['clickable_area']
          ?.map<VKStoriesClickableArea>(
            (item) => VKStoriesClickableArea.fromMap(item),
          )
          ?.toList(),
      id: map['id'] as int,
      hashtag: map['hashtag'] as String,
      linkObject: VKBaseLink.fromMap(map['link_object']),
      mention: map['mention'] as String,
      tooltipText: map['tooltip_text'] as String,
      ownerId: map['owner_id'] as int,
      storyId: map['story_id'] as int,
      question: map['question'] as String,
      questionButton: map['question_button'] as String,
      placeId: map['place_id'] as int,
      marketItem: VKMarketMarketItem.fromMap(map['market_item']),
      audio: VKAudioAudio.fromMap(map['audio']),
      audioStartTime: map['audio_start_time'] as int,
      style: map['style'] as String,
      type: map['type'] as String,
      subtype: map['subtype'] as String,
      postOwnerId: map['post_owner_id'] as int,
      postId: map['post_id'] as int,
      poll: VKPollsPoll.fromMap(map['poll']),
      color: map['color'] as String,
      stickerId: map['sticker_id'] as int,
      stickerPackId: map['sticker_pack_id'] as int,
      app: VKAppsAppMin.fromMap(map['app']),
      appContext: map['app_context'] as String,
      hasNewInteractions: map['has_new_interactions'] as bool,
      isBroadcastNotifyAllowed: map['is_broadcast_notify_allowed'] as bool,
    );
  }
}
