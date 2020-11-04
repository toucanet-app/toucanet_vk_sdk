import 'package:meta/meta.dart';

class CallbackPhotoComment {
  final int id;

  final int fromId;

  final int date;

  final String text;

  final int photoOwnerOd;

  const CallbackPhotoComment({
    @required this.id,
    @required this.fromId,
    @required this.date,
    @required this.text,
    @required this.photoOwnerOd,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'from_id': fromId,
      'date': date,
      'text': text,
      'photo_owner_od': photoOwnerOd,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory CallbackPhotoComment.fromMap(Map<String, dynamic> map) {
    return CallbackPhotoComment(
      id: map['id'] as int,
      fromId: map['from_id'] as int,
      date: map['date'] as int,
      text: map['text'] as String,
      photoOwnerOd: map['photo_owner_od'] as int,
    );
  }
}
