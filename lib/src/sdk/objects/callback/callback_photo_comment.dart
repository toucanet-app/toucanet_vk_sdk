import 'package:meta/meta.dart';

class VKCallbackPhotoComment {
  final int id;

  final int fromId;

  final int date;

  final String text;

  final int photoOwnerOd;

  const VKCallbackPhotoComment({
    @required this.id,
    @required this.fromId,
    @required this.date,
    @required this.text,
    @required this.photoOwnerOd,
  })  : assert(id >= 0),
        assert(fromId >= 0),
        assert(date >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'from_id': fromId,
      'date': date,
      'text': text,
      'photo_owner_od': photoOwnerOd,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKCallbackPhotoComment.fromMap(Map<String, dynamic> map) {
    return VKCallbackPhotoComment(
      id: map['id'] as int,
      fromId: map['from_id'] as int,
      date: map['date'] as int,
      text: map['text'] as String,
      photoOwnerOd: map['photo_owner_od'] as int,
    );
  }
}
