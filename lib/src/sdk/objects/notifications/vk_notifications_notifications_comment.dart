import '../board/vk_board_topic.dart';
import '../photos/vk_photos_photo.dart';
import '../video/vk_video_video.dart';
import '../wall/vk_wall_wallpost.dart';

class VKNotificationsNotificationsComment {
  /// Date when the comment has been added in Unixtime.
  final int date;

  /// Comment ID.
  final int id;

  /// Author ID.
  final int ownerId;

  final VKPhotosPhoto photo;

  final VKWallWallpost post;

  /// Comment text.
  final String text;

  final VKBoardTopic topic;

  final VKVideoVideo video;

  const VKNotificationsNotificationsComment({
    this.date,
    this.id,
    this.ownerId,
    this.photo,
    this.post,
    this.text,
    this.topic,
    this.video,
  })  : assert(date == null || date >= 0),
        assert(id == null || id >= 1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'id': id,
      'owner_id': ownerId,
      'photo': photo?.toMap(),
      'post': post?.toMap(),
      'text': text,
      'topic': topic?.toMap(),
      'video': video?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNotificationsNotificationsComment.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNotificationsNotificationsComment(
      date: map['date'] as int,
      id: map['id'] as int,
      ownerId: map['owner_id'] as int,
      photo: VKPhotosPhoto.fromMap(map['photo']),
      post: VKWallWallpost.fromMap(map['post']),
      text: map['text'] as String,
      topic: VKBoardTopic.fromMap(map['topic']),
      video: VKVideoVideo.fromMap(map['video']),
    );
  }
}
