import '../base/base_bool_int.dart';
import '../base/base_likes.dart';
import '../base/base_property_exists.dart';
import '../base/base_reposts_info.dart';
import '../media/media_restriction.dart';
import 'video_live_settings.dart';
import 'video_video_files.dart';
import 'video_video_image.dart';

class VKVideoVideoFull {
  /// Video access key.
  final String accessKey;

  /// Date when the video has been added in Unixtime.
  final int addingDate;

  /// Information whether current user can comment the video.
  final VKBaseBoolInt canComment;

  /// Information whether current user can edit the video.
  final VKBaseBoolInt canEdit;

  /// Information whether current user can like the video.
  final VKBaseBoolInt canLike;

  /// Information whether current user can repost the video.
  final VKBaseBoolInt canRepost;

  /// Information whether current user can subscribe to author of the video.
  final VKBaseBoolInt canSubscribe;

  /// Information whether current user can add the video to favourites.
  final VKBaseBoolInt canAddToFaves;

  /// Information whether current user can add the video.
  final VKBaseBoolInt canAdd;

  /// Information whether current user can attach action button to the video.
  final VKBaseBoolInt canAttachLink;

  /// 1 if video is private.
  final VKBaseBoolInt isPrivate;

  /// Number of comments.
  final int comments;

  /// Date when video has been uploaded in Unixtime.
  final int date;

  /// Video description.
  final String description;

  /// Video duration in seconds.
  final int duration;

  final List<VKVideoVideoImage> image;

  final List<VKVideoVideoImage> firstFrame;

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
  final VKBasePropertyExists processing;

  /// 1 if  video is being converted.
  final VKBaseBoolInt converting;

  final VKMediaRestriction restriction;

  /// 1 if video is added to user's albums.
  final VKBaseBoolInt added;

  /// 1 if user is subscribed to author of the video.
  final VKBaseBoolInt isSubscribed;

  final String trackCode;

  /// Information whether the video is repeated.
  final VKBasePropertyExists repeat;

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
  final VKBasePropertyExists live;

  /// 1 if the video is an upcoming stream.
  final VKBasePropertyExists upcoming;

  /// Number of spectators of the stream.
  final int spectators;

  /// External platform.
  final String platform;

  final VKBaseLikes likes;

  final VKBaseRepostsInfo reposts;

  final VKVideoVideoFiles files;

  /// Settings for live stream.
  final VKVideoLiveSettings liveSettings;

  const VKVideoVideoFull({
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
  })  : assert(addingDate >= 0),
        assert(comments >= 0),
        assert(date >= 0),
        assert(duration >= 0),
        assert(width >= 0),
        assert(height >= 0),
        assert(id >= 0),
        assert(userId >= 0),
        assert(views >= 0),
        assert(localViews >= 0),
        assert(contentRestricted >= 0),
        assert(balance >= 0),
        assert(spectators >= 0);

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

  factory VKVideoVideoFull.fromMap(Map<String, dynamic> map) {
    return VKVideoVideoFull(
      accessKey: map['access_key'] as String,
      addingDate: map['adding_date'] as int,
      canComment: VKBaseBoolInt(map['can_comment']),
      canEdit: VKBaseBoolInt(map['can_edit']),
      canLike: VKBaseBoolInt(map['can_like']),
      canRepost: VKBaseBoolInt(map['can_repost']),
      canSubscribe: VKBaseBoolInt(map['can_subscribe']),
      canAddToFaves: VKBaseBoolInt(map['can_add_to_faves']),
      canAdd: VKBaseBoolInt(map['can_add']),
      canAttachLink: VKBaseBoolInt(map['can_attach_link']),
      isPrivate: VKBaseBoolInt(map['is_private']),
      comments: map['comments'] as int,
      date: map['date'] as int,
      description: map['description'] as String,
      duration: map['duration'] as int,
      image: map['image']?.map((item) => VKVideoVideoImage.fromMap(item)),
      firstFrame:
          map['first_frame']?.map((item) => VKVideoVideoImage.fromMap(item)),
      width: map['width'] as int,
      height: map['height'] as int,
      id: map['id'] as int,
      ownerId: map['owner_id'] as int,
      userId: map['user_id'] as int,
      title: map['title'] as String,
      isFavorite: map['is_favorite'] as bool,
      player: map['player'] as String,
      processing: VKBasePropertyExists(map['processing']),
      converting: VKBaseBoolInt(map['converting']),
      restriction: VKMediaRestriction.fromMap(map['restriction']),
      added: VKBaseBoolInt(map['added']),
      isSubscribed: VKBaseBoolInt(map['is_subscribed']),
      trackCode: map['track_code'] as String,
      repeat: VKBasePropertyExists(map['repeat']),
      type: map['type'] as String,
      views: map['views'] as int,
      localViews: map['local_views'] as int,
      contentRestricted: map['content_restricted'] as int,
      contentRestrictedMessage: map['content_restricted_message'] as String,
      balance: map['balance'] as int,
      liveStatus: map['live_status'] as String,
      live: VKBasePropertyExists(map['live']),
      upcoming: VKBasePropertyExists(map['upcoming']),
      spectators: map['spectators'] as int,
      platform: map['platform'] as String,
      likes: VKBaseLikes.fromMap(map['likes']),
      reposts: VKBaseRepostsInfo.fromMap(map['reposts']),
      files: VKVideoVideoFiles.fromMap(map['files']),
      liveSettings: VKVideoLiveSettings.fromMap(map['live_settings']),
    );
  }
}
