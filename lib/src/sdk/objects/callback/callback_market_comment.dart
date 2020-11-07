import 'package:meta/meta.dart';

class VKCallbackMarketComment {
  final int id;

  final int fromId;

  final int date;

  final String text;

  final int marketOwnerOd;

  final int photoId;

  const VKCallbackMarketComment({
    @required this.id,
    @required this.fromId,
    @required this.date,
    this.text,
    this.marketOwnerOd,
    this.photoId,
  })  : assert(id >= 0),
        assert(date >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'from_id': fromId,
      'date': date,
      'text': text,
      'market_owner_od': marketOwnerOd,
      'photo_id': photoId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKCallbackMarketComment.fromMap(Map<String, dynamic> map) {
    return VKCallbackMarketComment(
      id: map['id'] as int,
      fromId: map['from_id'] as int,
      date: map['date'] as int,
      text: map['text'] as String,
      marketOwnerOd: map['market_owner_od'] as int,
      photoId: map['photo_id'] as int,
    );
  }
}
