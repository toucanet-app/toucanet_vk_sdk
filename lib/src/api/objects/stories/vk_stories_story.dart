import 'package:meta/meta.dart';

import '../base/vk_base_bool_int.dart';
import '../photos/vk_photos_photo.dart';
import '../video/vk_video_video.dart';
import 'vk_stories_clickable_stickers.dart';
import 'vk_stories_replies.dart';
import 'vk_stories_story_link.dart';
import 'vk_stories_story_type.dart';

class VKStoriesStory {
  /// Access key for private object..
  final String accessKey;

  /// Information whether current user can comment the story (0 - no, 1 - yes)..
  final VKBaseBoolInt canComment;

  /// Information whether current user can reply to the story (0 - no, 1 - yes)..
  final VKBaseBoolInt canReply;

  /// Information whether current user can see the story (0 - no, 1 - yes)..
  final VKBaseBoolInt canSee;

  /// Information whether current user can like the story..
  final bool canLike;

  /// Information whether current user can share the story (0 - no, 1 - yes)..
  final VKBaseBoolInt canShare;

  /// Information whether current user can hide the story (0 - no, 1 - yes)..
  final VKBaseBoolInt canHide;

  /// Date when story has been added in Unixtime..
  final int date;

  /// Story expiration time. Unixtime..
  final int expiresAt;

  /// Story ID..
  final int id;

  /// Information whether the story is deleted (false - no, true - yes)..
  final bool isDeleted;

  /// Information whether the story is expired (false - no, true - yes)..
  final bool isExpired;

  final VKStoriesStoryLink link;

  /// Story owner's ID..
  final int ownerId;

  final VKStoriesStory parentStory;

  /// Access key for private object..
  final String parentStoryAccessKey;

  /// Parent story ID..
  final int parentStoryId;

  /// Parent story owner's ID..
  final int parentStoryOwnerId;

  final VKPhotosPhoto photo;

  /// Replies counters to current story..
  final VKStoriesReplies replies;

  /// Information whether current user has seen the story or not (0 - no, 1 - yes)..
  final VKBaseBoolInt seen;

  final VKStoriesStoryType type;

  final VKStoriesClickableStickers clickableStickers;

  final VKVideoVideo video;

  /// Views number..
  final int views;

  /// Information whether story has question sticker and current user can send question to the author.
  final VKBaseBoolInt canAsk;

  /// Information whether story has question sticker and current user can send anonymous question to the author.
  final VKBaseBoolInt canAskAnonymous;

  final int narrativesCount;

  final String firstNarrativeTitle;

  final int birthdayWishUserId;

  final bool canUseInNarrative;

  const VKStoriesStory({
    this.accessKey,
    this.canComment,
    this.canReply,
    this.canSee,
    this.canLike,
    this.canShare,
    this.canHide,
    this.date,
    this.expiresAt,
    @required this.id,
    this.isDeleted,
    this.isExpired,
    this.link,
    @required this.ownerId,
    this.parentStory,
    this.parentStoryAccessKey,
    this.parentStoryId,
    this.parentStoryOwnerId,
    this.photo,
    this.replies,
    this.seen,
    this.type,
    this.clickableStickers,
    this.video,
    this.views,
    this.canAsk,
    this.canAskAnonymous,
    this.narrativesCount,
    this.firstNarrativeTitle,
    this.birthdayWishUserId,
    this.canUseInNarrative,
  })  : assert(date == null || date >= 0),
        assert(expiresAt == null || expiresAt >= 0),
        assert(views == null || views >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access_key': accessKey,
      'can_comment': canComment?.value,
      'can_reply': canReply?.value,
      'can_see': canSee?.value,
      'can_like': canLike,
      'can_share': canShare?.value,
      'can_hide': canHide?.value,
      'date': date,
      'expires_at': expiresAt,
      'id': id,
      'is_deleted': isDeleted,
      'is_expired': isExpired,
      'link': link?.toMap(),
      'owner_id': ownerId,
      'parent_story': parentStory?.toMap(),
      'parent_story_access_key': parentStoryAccessKey,
      'parent_story_id': parentStoryId,
      'parent_story_owner_id': parentStoryOwnerId,
      'photo': photo?.toMap(),
      'replies': replies?.toMap(),
      'seen': seen?.value,
      'type': type?.value,
      'clickable_stickers': clickableStickers?.toMap(),
      'video': video?.toMap(),
      'views': views,
      'can_ask': canAsk?.value,
      'can_ask_anonymous': canAskAnonymous?.value,
      'narratives_count': narrativesCount,
      'first_narrative_title': firstNarrativeTitle,
      'birthday_wish_user_id': birthdayWishUserId,
      'can_use_in_narrative': canUseInNarrative,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStoriesStory.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKStoriesStory(
      accessKey: map['access_key'] as String,
      canComment: VKBaseBoolInt(map['can_comment']),
      canReply: VKBaseBoolInt(map['can_reply']),
      canSee: VKBaseBoolInt(map['can_see']),
      canLike: map['can_like'] as bool,
      canShare: VKBaseBoolInt(map['can_share']),
      canHide: VKBaseBoolInt(map['can_hide']),
      date: map['date'] as int,
      expiresAt: map['expires_at'] as int,
      id: map['id'] as int,
      isDeleted: map['is_deleted'] as bool,
      isExpired: map['is_expired'] as bool,
      link: VKStoriesStoryLink.fromMap(map['link']),
      ownerId: map['owner_id'] as int,
      parentStory: VKStoriesStory.fromMap(map['parent_story']),
      parentStoryAccessKey: map['parent_story_access_key'] as String,
      parentStoryId: map['parent_story_id'] as int,
      parentStoryOwnerId: map['parent_story_owner_id'] as int,
      photo: VKPhotosPhoto.fromMap(map['photo']),
      replies: VKStoriesReplies.fromMap(map['replies']),
      seen: VKBaseBoolInt(map['seen']),
      type: VKStoriesStoryType(map['type']),
      clickableStickers:
          VKStoriesClickableStickers.fromMap(map['clickable_stickers']),
      video: VKVideoVideo.fromMap(map['video']),
      views: map['views'] as int,
      canAsk: VKBaseBoolInt(map['can_ask']),
      canAskAnonymous: VKBaseBoolInt(map['can_ask_anonymous']),
      narrativesCount: map['narratives_count'] as int,
      firstNarrativeTitle: map['first_narrative_title'] as String,
      birthdayWishUserId: map['birthday_wish_user_id'] as int,
      canUseInNarrative: map['can_use_in_narrative'] as bool,
    );
  }
}
