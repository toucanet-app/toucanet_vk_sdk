import 'package:meta/meta.dart';

class CallbackVideoComment {
  final int id;

  final int fromId;

  final int date;

  final String text;

  final int videoOwnerOd;

  const CallbackVideoComment({
    @required this.id,
    @required this.fromId,
    @required this.date,
    @required this.text,
    @required this.videoOwnerOd,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'from_id': fromId,
      'date': date,
      'text': text,
      'video_owner_od': videoOwnerOd,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory CallbackVideoComment.fromMap(Map<String, dynamic> map) {
    return CallbackVideoComment(
      id: map['id'] as int,
      fromId: map['from_id'] as int,
      date: map['date'] as int,
      text: map['text'] as String,
      videoOwnerOd: map['video_owner_od'] as int,
    );
  }
}
