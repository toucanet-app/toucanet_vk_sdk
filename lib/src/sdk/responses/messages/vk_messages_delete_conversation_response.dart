import 'package:meta/meta.dart';

class VKMessagesDeleteConversationResponse {
  /// Id of the last message, that was deleted.
  final int lastDeletedId;

  const VKMessagesDeleteConversationResponse({
    @required this.lastDeletedId,
  }) : assert(lastDeletedId >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'last_deleted_id': lastDeletedId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesDeleteConversationResponse.fromMap(
      Map<String, dynamic> map) {
    return VKMessagesDeleteConversationResponse(
      lastDeletedId: map['last_deleted_id'] as int,
    );
  }
}
