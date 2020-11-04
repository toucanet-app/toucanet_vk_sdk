import 'package:meta/meta.dart';

class CallbackMarketCommentDelete {
  final int ownerId;

  final int id;

  final int userId;

  final int itemId;

  const CallbackMarketCommentDelete({
    @required this.ownerId,
    @required this.id,
    @required this.userId,
    @required this.itemId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'owner_id': ownerId,
      'id': id,
      'user_id': userId,
      'item_id': itemId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory CallbackMarketCommentDelete.fromMap(Map<String, dynamic> map) {
    return CallbackMarketCommentDelete(
      ownerId: map['owner_id'] as int,
      id: map['id'] as int,
      userId: map['user_id'] as int,
      itemId: map['item_id'] as int,
    );
  }
}
