import 'package:meta/meta.dart';

class VKPrettyCardsCreateResponse {
  /// Owner ID of created pretty card.
  final int ownerId;

  /// Card ID of created pretty card.
  final String cardId;

  const VKPrettyCardsCreateResponse({
    @required this.ownerId,
    @required this.cardId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'owner_id': ownerId,
      'card_id': cardId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPrettyCardsCreateResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPrettyCardsCreateResponse(
      ownerId: map['owner_id'] as int,
      cardId: map['card_id'] as String,
    );
  }
}
