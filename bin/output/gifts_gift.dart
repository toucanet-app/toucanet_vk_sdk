import 'gifts_layout.dart';
import 'gifts_gift_privacy.dart';

class GiftsGift {
  /// Date when gist has been sent in Unixtime.
  final int date;

  /// Gift sender ID.
  final int fromId;

  final GiftsLayout gift;

  /// Hash.
  final String giftHash;

  /// Gift ID.
  final int id;

  /// Comment text.
  final String message;

  final GiftsGiftPrivacy privacy;

  const GiftsGift({
    this.date,
    this.fromId,
    this.gift,
    this.giftHash,
    this.id,
    this.message,
    this.privacy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'from_id': fromId,
      'gift': gift?.toMap(),
      'gift_hash': giftHash,
      'id': id,
      'message': message,
      'privacy': privacy?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory GiftsGift.fromMap(Map<String, dynamic> map) {
    return GiftsGift(
      date: map['date'] as int,
      fromId: map['from_id'] as int,
      gift: GiftsLayout.fromMap(map['gift']),
      giftHash: map['gift_hash'] as String,
      id: map['id'] as int,
      message: map['message'] as String,
      privacy: GiftsGiftPrivacy(map['privacy']),
    );
  }
}
