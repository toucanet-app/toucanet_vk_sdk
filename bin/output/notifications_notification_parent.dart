import 'wall_wallpost_attachment.dart';
import 'base_comments_info.dart';
import 'wall_geo.dart';
import 'base_likes_info.dart';
import 'wall_post_source.dart';
import 'wall_post_type.dart';
import 'base_reposts_info.dart';
import 'photos_image.dart';
import 'base_bool_int.dart';
import 'photos_photo_sizes.dart';
import 'media_restriction.dart';
import 'video_video_image.dart';
import 'base_property_exists.dart';
import 'photos_photo.dart';
import 'wall_wallpost.dart';
import 'board_topic.dart';
import 'video_video.dart';
import 'package:meta/meta.dart';

class NotificationsNotificationParent {
  final List<WallWallpostAttachment> attachments;

  final BaseCommentsInfo comments;

  /// ID of the source post owner.
  final int copyOwnerId;

  /// ID of the source post.
  final int copyPostId;

  /// Date of publishing in Unixtime.
  final int date;

  /// Post author ID.
  final int fromId;

  final WallGeo geo;

  /// Post ID.
  final int id;

  /// Information whether the post in favorites list.
  final bool isFavorite;

  final BaseLikesInfo likes;

  /// wall post ID (if comment).
  final int postId;

  final WallPostSource postSource;

  final WallPostType postType;

  final BaseRepostsInfo reposts;

  /// Post signer ID.
  final int signerId;

  /// Post text.
  final String text;

  /// Wall owner's ID.
  final int toId;

  /// Access key for the photo.
  final String accessKey;

  /// Album ID.
  final int albumId;

  /// Original photo height.
  final int height;

  final List<PhotosImage> images;

  /// Latitude.
  final double lat;

  /// Longitude.
  final double long;

  /// Photo owner's ID.
  final int ownerId;

  /// URL of image with 2560 px width.
  final String photo256;

  /// Information whether current user can comment the photo.
  final BaseBoolInt canComment;

  final String place;

  final List<PhotosPhotoSizes> sizes;

  /// ID of the user who have uploaded the photo.
  final int userId;

  /// Original photo width.
  final int width;

  /// Whether photo has attached tag links.
  final bool hasTags;

  final MediaRestriction restrictions;

  /// Date when the topic has been created in Unixtime.
  final int created;

  /// Creator ID.
  final int createdBy;

  /// Information whether the topic is closed.
  final BaseBoolInt isClosed;

  /// Information whether the topic is fixed.
  final BaseBoolInt isFixed;

  /// Topic title.
  final String title;

  /// Date when the topic has been updated in Unixtime.
  final int updated;

  /// ID of user who updated the topic.
  final int updatedBy;

  /// Date when the video has been added in Unixtime.
  final int addingDate;

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

  /// Video description.
  final String description;

  /// Video duration in seconds.
  final int duration;

  final List<VideoVideoImage> image;

  final List<VideoVideoImage> firstFrame;

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

  final PhotosPhoto photo;

  final WallWallpost post;

  final BoardTopic topic;

  final VideoVideo video;

  const NotificationsNotificationParent({
    this.attachments,
    this.comments,
    this.copyOwnerId,
    this.copyPostId,
    @required this.date,
    this.fromId,
    this.geo,
    @required this.id,
    this.isFavorite,
    this.likes,
    this.postId,
    this.postSource,
    this.postType,
    this.reposts,
    this.signerId,
    this.text,
    this.toId,
    this.accessKey,
    @required this.albumId,
    this.height,
    this.images,
    this.lat,
    this.long,
    @required this.ownerId,
    this.photo256,
    this.canComment,
    this.place,
    this.sizes,
    this.userId,
    this.width,
    @required this.hasTags,
    this.restrictions,
    this.created,
    this.createdBy,
    this.isClosed,
    this.isFixed,
    this.title,
    this.updated,
    this.updatedBy,
    this.addingDate,
    this.canEdit,
    this.canLike,
    this.canRepost,
    this.canSubscribe,
    this.canAddToFaves,
    this.canAdd,
    this.canAttachLink,
    this.isPrivate,
    this.description,
    this.duration,
    this.image,
    this.firstFrame,
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
    this.photo,
    this.post,
    this.topic,
    this.video,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments': attachments?.map((item) => item?.toMap()),
      'comments': comments?.toMap(),
      'copy_owner_id': copyOwnerId,
      'copy_post_id': copyPostId,
      'date': date,
      'from_id': fromId,
      'geo': geo?.toMap(),
      'id': id,
      'is_favorite': isFavorite,
      'likes': likes?.toMap(),
      'post_id': postId,
      'post_source': postSource?.toMap(),
      'post_type': postType?.value,
      'reposts': reposts?.toMap(),
      'signer_id': signerId,
      'text': text,
      'to_id': toId,
      'access_key': accessKey,
      'album_id': albumId,
      'height': height,
      'images': images?.map((item) => item?.toMap()),
      'lat': lat,
      'long': long,
      'owner_id': ownerId,
      'photo_256': photo256,
      'can_comment': canComment?.value,
      'place': place,
      'sizes': sizes?.map((item) => item?.toMap()),
      'user_id': userId,
      'width': width,
      'has_tags': hasTags,
      'restrictions': restrictions?.toMap(),
      'created': created,
      'created_by': createdBy,
      'is_closed': isClosed?.value,
      'is_fixed': isFixed?.value,
      'title': title,
      'updated': updated,
      'updated_by': updatedBy,
      'adding_date': addingDate,
      'can_edit': canEdit?.value,
      'can_like': canLike?.value,
      'can_repost': canRepost?.value,
      'can_subscribe': canSubscribe?.value,
      'can_add_to_faves': canAddToFaves?.value,
      'can_add': canAdd?.value,
      'can_attach_link': canAttachLink?.value,
      'is_private': isPrivate?.value,
      'description': description,
      'duration': duration,
      'image': image?.map((item) => item?.toMap()),
      'first_frame': firstFrame?.map((item) => item?.toMap()),
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
      'photo': photo?.toMap(),
      'post': post?.toMap(),
      'topic': topic?.toMap(),
      'video': video?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory NotificationsNotificationParent.fromMap(Map<String, dynamic> map) {
    return NotificationsNotificationParent(
      attachments: map['attachments']
          ?.map((item) => WallWallpostAttachment.fromMap(item)),
      comments: BaseCommentsInfo.fromMap(map['comments']),
      copyOwnerId: map['copy_owner_id'] as int,
      copyPostId: map['copy_post_id'] as int,
      date: map['date'] as int,
      fromId: map['from_id'] as int,
      geo: WallGeo.fromMap(map['geo']),
      id: map['id'] as int,
      isFavorite: map['is_favorite'] as bool,
      likes: BaseLikesInfo.fromMap(map['likes']),
      postId: map['post_id'] as int,
      postSource: WallPostSource.fromMap(map['post_source']),
      postType: WallPostType(map['post_type']),
      reposts: BaseRepostsInfo.fromMap(map['reposts']),
      signerId: map['signer_id'] as int,
      text: map['text'] as String,
      toId: map['to_id'] as int,
      accessKey: map['access_key'] as String,
      albumId: map['album_id'] as int,
      height: map['height'] as int,
      images: map['images']?.map((item) => PhotosImage.fromMap(item)),
      lat: map['lat'] as double,
      long: map['long'] as double,
      ownerId: map['owner_id'] as int,
      photo256: map['photo_256'] as String,
      canComment: BaseBoolInt(map['can_comment']),
      place: map['place'] as String,
      sizes: map['sizes']?.map((item) => PhotosPhotoSizes.fromMap(item)),
      userId: map['user_id'] as int,
      width: map['width'] as int,
      hasTags: map['has_tags'] as bool,
      restrictions: MediaRestriction.fromMap(map['restrictions']),
      created: map['created'] as int,
      createdBy: map['created_by'] as int,
      isClosed: BaseBoolInt(map['is_closed']),
      isFixed: BaseBoolInt(map['is_fixed']),
      title: map['title'] as String,
      updated: map['updated'] as int,
      updatedBy: map['updated_by'] as int,
      addingDate: map['adding_date'] as int,
      canEdit: BaseBoolInt(map['can_edit']),
      canLike: BaseBoolInt(map['can_like']),
      canRepost: BaseBoolInt(map['can_repost']),
      canSubscribe: BaseBoolInt(map['can_subscribe']),
      canAddToFaves: BaseBoolInt(map['can_add_to_faves']),
      canAdd: BaseBoolInt(map['can_add']),
      canAttachLink: BaseBoolInt(map['can_attach_link']),
      isPrivate: BaseBoolInt(map['is_private']),
      description: map['description'] as String,
      duration: map['duration'] as int,
      image: map['image']?.map((item) => VideoVideoImage.fromMap(item)),
      firstFrame:
          map['first_frame']?.map((item) => VideoVideoImage.fromMap(item)),
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
      photo: PhotosPhoto.fromMap(map['photo']),
      post: WallWallpost.fromMap(map['post']),
      topic: BoardTopic.fromMap(map['topic']),
      video: VideoVideo.fromMap(map['video']),
    );
  }
}
