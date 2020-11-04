import 'wall_wallpost_attachment.dart';
import 'base_geo.dart';
import 'base_likes_info.dart';

class NotificationsFeedback {
  final List<WallWallpostAttachment> attachments;

  /// Reply author's ID.
  final int fromId;

  final BaseGeo geo;

  /// Item ID.
  final int id;

  final BaseLikesInfo likes;

  /// Reply text.
  final String text;

  /// Wall owner's ID.
  final int toId;

  const NotificationsFeedback({
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
      'attachments': attachments?.map((item) => item?.toMap()),
      'from_id': fromId,
      'geo': geo?.toMap(),
      'id': id,
      'likes': likes?.toMap(),
      'text': text,
      'to_id': toId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory NotificationsFeedback.fromMap(Map<String, dynamic> map) {
    return NotificationsFeedback(
      attachments: map['attachments']?.map((item) => WallWallpostAttachment.fromMap(item)),
      fromId: map['from_id'] as int,
      geo: BaseGeo.fromMap(map['geo']),
      id: map['id'] as int,
      likes: BaseLikesInfo.fromMap(map['likes']),
      text: map['text'] as String,
      toId: map['to_id'] as int,
    );
  }
}
