import 'vk_gifts_gift_privacy.dart';
import 'vk_gifts_layout.dart';

class VKGiftsGift {
  /// Date when gist has been sent in Unixtime.
  final int date;

  /// Gift sender ID.
  final int fromId;

  final VKGiftsLayout gift;

  /// Hash.
  final String giftHash;

  /// Gift ID.
  final int id;

  /// Comment text.
  final String message;

  final VKGiftsGiftPrivacy privacy;

  const VKGiftsGift({
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

  factory VKGiftsGift.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGiftsGift(
      date: map['date'] as int,
      fromId: map['from_id'] as int,
      gift: VKGiftsLayout.fromMap(map['gift']),
      giftHash: map['gift_hash'] as String,
      id: map['id'] as int,
      message: map['message'] as String,
      privacy: VKGiftsGiftPrivacy(map['privacy']),
    );
  }
}
