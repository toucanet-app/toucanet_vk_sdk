import 'base_bool_int.dart';
import 'video_video_image.dart';
import 'base_property_exists.dart';
import 'media_restriction.dart';
import 'base_likes.dart';
import 'base_reposts_info.dart';
import 'video_video_files.dart';
import 'video_live_settings.dart';

class VideoVideoFull {
  /// Video access key.
  final String accessKey;

  /// Date when the video has been added in Unixtime.
  final int addingDate;

  /// Information whether current user can comment the video.
  final BaseBoolInt canComment;

  /// Information whether current user can edit the video.
  final BaseBoolInt canEdit;

  /// Information whether current user can like the video.
  final BaseBoolInt canLike;

  /// Information whether current user can repost the video.
  final BaseBoolInt canRepost;

  /// Information whether current user can subscribe to author of the video.
  final BaseBoolInt canSubscribe;

  /// Information whether current user can add the video to favourites.
  final BaseBoolInt canAddToFaves;

  /// Information whether current user can add the video.
  final BaseBoolInt canAdd;

  /// Information whether current user can attach action button to the video.
  final BaseBoolInt canAttachLink;

  /// 1 if video is private.
  final BaseBoolInt isPrivate;

  /// Number of comments.
  final int comments;

  /// Date when video has been uploaded in Unixtime.
  final int date;

  /// Video description.
  final String description;

  /// Video duration in seconds.
  final int duration;

  final List<VideoVideoImage> image;

  final List<VideoVideoImage> firstFrame;

  /// Video width.
  final int width;

  /// Video height.
  final int height;

  /// Video ID.
  final int id;

  /// Video owner ID.
  final int ownerId;

  /// Id of the user who uploaded the video if it was uploaded to a group by member.
  final int userId;

  /// Video title.
  final String title;

  /// Whether video is added to bookmarks.
  final bool isFavorite;

  /// Video embed URL.
  final String player;

  /// Returns if the video is processing.
  final BasePropertyExists processing;

  /// 1 if  video is being converted.
  final BaseBoolInt converting;

  final MediaRestriction restriction;

  /// 1 if video is added to user's albums.
  final BaseBoolInt added;

  /// 1 if user is subscribed to author of the video.
  final BaseBoolInt isSubscribed;

  final String trackCode;

  /// Information whether the video is repeated.
  final BasePropertyExists repeat;

  final String type;

  /// Number of views.
  final int views;

  /// If video is external, number of views on vk.
  final int localViews;

  /// Restriction code.
  final int contentRestricted;

  /// Restriction text.
  final String contentRestrictedMessage;

  /// Live donations balance.
  final int balance;

  /// Live stream status.
  final String liveStatus;

  /// 1 if the video is a live stream.
  final BasePropertyExists live;

  /// 1 if the video is an upcoming stream.
  final BasePropertyExists upcoming;

  /// Number of spectators of the stream.
  final int spectators;

  /// External platform.
  final String platform;

  final BaseLikes likes;

  final BaseRepostsInfo reposts;

  final VideoVideoFiles files;

  /// Settings for live stream.
  final VideoLiveSettings liveSettings;

  const VideoVideoFull({
    this.accessKey,
    this.addingDate,
    this.canComment,
    this.canEdit,
    this.canLike,
    this.canRepost,
    this.canSubscribe,
    this.canAddToFaves,
    this.canAdd,
    this.canAttachLink,
    this.isPrivate,
    this.comments,
    this.date,
    this.description,
    this.duration,
    this.image,
    this.firstFrame,
    this.width,
    this.height,
    this.id,
    this.ownerId,
    this.userId,
    this.title,
    this.isFavorite,
    this.player,
    this.processing,
    this.converting,
    this.restriction,
    this.added,
    this.isSubscribed,
    this.trackCode,
    this.repeat,
    this.type,
    this.views,
    this.localViews,
    this.contentRestricted,
    this.contentRestrictedMessage,
    this.balance,
    this.liveStatus,
    this.live,
    this.upcoming,
    this.spectators,
    this.platform,
    this.likes,
    this.reposts,
    this.files,
    this.liveSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access_key': accessKey,
      'adding_date': addingDate,
      'can_comment': canComment?.value,
      'can_edit': canEdit?.value,
      'can_like': canLike?.value,
      'can_repost': canRepost?.value,
      'can_subscribe': canSubscribe?.value,
      'can_add_to_faves': canAddToFaves?.value,
      'can_add': canAdd?.value,
      'can_attach_link': canAttachLink?.value,
      'is_private': isPrivate?.value,
      'comments': comments,
      'date': date,
      'description': description,
      'duration': duration,
      'image': image?.map((item) => item?.toMap()),
      'first_frame': firstFrame?.map((item) => item?.toMap()),
      'width': width,
      'height': height,
      'id': id,
      'owner_id': ownerId,
      'user_id': userId,
      'title': title,
      'is_favorite': isFavorite,
      'player': player,
      'processing': processing?.value,
      'converting': converting?.value,
      'restriction': restriction?.toMap(),
      'added': added?.value,
      'is_subscribed': isSubscribed?.value,
      'track_code': trackCode,
      'repeat': repeat?.value,
      'type': type,
      'views': views,
      'local_views': localViews,
      'content_restricted': contentRestricted,
      'content_restricted_message': contentRestrictedMessage,
      'balance': balance,
      'live_status': liveStatus,
      'live': live?.value,
      'upcoming': upcoming?.value,
      'spectators': spectators,
      'platform': platform,
      'likes': likes?.toMap(),
      'reposts': reposts?.toMap(),
      'files': files?.toMap(),
      'live_settings': liveSettings?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VideoVideoFull.fromMap(Map<String, dynamic> map) {
    return VideoVideoFull(
      accessKey: map['access_key'] as String,
      addingDate: map['adding_date'] as int,
      canComment: BaseBoolInt(map['can_comment']),
      canEdit: BaseBoolInt(map['can_edit']),
      canLike: BaseBoolInt(map['can_like']),
      canRepost: BaseBoolInt(map['can_repost']),
      canSubscribe: BaseBoolInt(map['can_subscribe']),
      canAddToFaves: BaseBoolInt(map['can_add_to_faves']),
      canAdd: BaseBoolInt(map['can_add']),
      canAttachLink: BaseBoolInt(map['can_attach_link']),
      isPrivate: BaseBoolInt(map['is_private']),
      comments: map['comments'] as int,
      date: map['date'] as int,
      description: map['description'] as String,
      duration: map['duration'] as int,
      image: map['image']?.map((item) => VideoVideoImage.fromMap(item)),
      firstFrame: map['first_frame']?.map((item) => VideoVideoImage.fromMap(item)),
      width: map['width'] as int,
      height: map['height'] as int,
      id: map['id'] as int,
      ownerId: map['owner_id'] as int,
      userId: map['user_id'] as int,
      title: map['title'] as String,
      isFavorite: map['is_favorite'] as bool,
      player: map['player'] as String,
      processing: BasePropertyExists(map['processing']),
      converting: BaseBoolInt(map['converting']),
      restriction: MediaRestriction.fromMap(map['restriction']),
      added: BaseBoolInt(map['added']),
      isSubscribed: BaseBoolInt(map['is_subscribed']),
      trackCode: map['track_code'] as String,
      repeat: BasePropertyExists(map['repeat']),
      type: map['type'] as String,
      views: map['views'] as int,
      localViews: map['local_views'] as int,
      contentRestricted: map['content_restricted'] as int,
      contentRestrictedMessage: map['content_restricted_message'] as String,
      balance: map['balance'] as int,
      liveStatus: map['live_status'] as String,
      live: BasePropertyExists(map['live']),
      upcoming: BasePropertyExists(map['upcoming']),
      spectators: map['spectators'] as int,
      platform: map['platform'] as String,
      likes: BaseLikes.fromMap(map['likes']),
      reposts: BaseRepostsInfo.fromMap(map['reposts']),
      files: VideoVideoFiles.fromMap(map['files']),
      liveSettings: VideoLiveSettings.fromMap(map['live_settings']),
    );
  }
}
