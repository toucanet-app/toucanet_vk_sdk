import '../base/vk_base_geo.dart';
import '../base/vk_base_likes_info.dart';
import '../wall/vk_wall_wallpost_attachment.dart';

class VKNotificationsFeedback {
  final List<VKWallWallpostAttachment> attachments;

  /// Reply author's ID.
  final int fromId;

  final VKBaseGeo geo;

  /// Item ID.
  final int id;

  final VKBaseLikesInfo likes;

  /// Reply text.
  final String text;

  /// Wall owner's ID.
  final int toId;

  const VKNotificationsFeedback({
    this.attachments,
    this.fromId,
    this.geo,
    this.id,
    this.likes,
    this.text,
    this.toId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments': attachments
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
      'from_id': fromId,
      'geo': geo?.toMap(),
      'id': id,
      'likes': likes?.toMap(),
      'text': text,
      'to_id': toId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNotificationsFeedback.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKNotificationsFeedback(
      attachments: map['attachments']
          ?.map<VKWallWallpostAttachment>(
            (item) => VKWallWallpostAttachment.fromMap(item),
          )
          ?.toList(),
      fromId: map['from_id'] as int,
      geo: VKBaseGeo.fromMap(map['geo']),
      id: map['id'] as int,
      likes: VKBaseLikesInfo.fromMap(map['likes']),
      text: map['text'] as String,
      toId: map['to_id'] as int,
    );
  }
}
