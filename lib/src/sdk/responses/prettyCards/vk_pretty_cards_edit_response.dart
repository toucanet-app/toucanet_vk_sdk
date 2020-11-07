import 'package:meta/meta.dart';

class VKPrettyCardsEditResponse {
  /// Owner ID of edited pretty card.
  final int ownerId;

  /// Card ID of edited pretty card.
  final String cardId;

  const VKPrettyCardsEditResponse({
    @required this.ownerId,
    @required this.cardId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'owner_id': ownerId,
      'card_id': cardId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPrettyCardsEditResponse.fromMap(Map<String, dynamic> map) {
    return VKPrettyCardsEditResponse(
      ownerId: map['owner_id'] as int,
      cardId: map['card_id'] as String,
    );
  }
}
