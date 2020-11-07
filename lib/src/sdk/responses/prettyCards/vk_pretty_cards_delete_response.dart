import 'package:meta/meta.dart';

class VKPrettyCardsDeleteResponse {
  /// Owner ID of deleted pretty card.
  final int ownerId;

  /// Card ID of deleted pretty card.
  final String cardId;

  /// Error reason if error happened.
  final String error;

  const VKPrettyCardsDeleteResponse({
    @required this.ownerId,
    @required this.cardId,
    this.error,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'owner_id': ownerId,
      'card_id': cardId,
      'error': error,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPrettyCardsDeleteResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPrettyCardsDeleteResponse(
      ownerId: map['owner_id'] as int,
      cardId: map['card_id'] as String,
      error: map['error'] as String,
    );
  }
}
