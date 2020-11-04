import 'photos_photo.dart';
import 'wall_wallpost.dart';
import 'board_topic.dart';
import 'video_video.dart';

class NotificationsNotificationsComment {
  /// Date when the comment has been added in Unixtime.
  final int date;

  /// Comment ID.
  final int id;

  /// Author ID.
  final int ownerId;

  final PhotosPhoto photo;

  final WallWallpost post;

  /// Comment text.
  final String text;

  final BoardTopic topic;

  final VideoVideo video;

  const NotificationsNotificationsComment({
    this.date,
    this.id,
    this.ownerId,
    this.photo,
    this.post,
    this.text,
    this.topic,
    this.video,
  });

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

  factory NotificationsNotificationsComment.fromMap(Map<String, dynamic> map) {
    return NotificationsNotificationsComment(
      date: map['date'] as int,
      id: map['id'] as int,
      ownerId: map['owner_id'] as int,
      photo: PhotosPhoto.fromMap(map['photo']),
      post: WallWallpost.fromMap(map['post']),
      text: map['text'] as String,
      topic: BoardTopic.fromMap(map['topic']),
      video: VideoVideo.fromMap(map['video']),
    );
  }
}
