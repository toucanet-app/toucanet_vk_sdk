import 'package:meta/meta.dart';

class CallbackBoardPostDelete {
  final int topicOwnerId;

  final int topicId;

  final int id;

  const CallbackBoardPostDelete({
    @required this.topicOwnerId,
    @required this.topicId,
    @required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topic_owner_id': topicOwnerId,
      'topic_id': topicId,
      'id': id,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory CallbackBoardPostDelete.fromMap(Map<String, dynamic> map) {
    return CallbackBoardPostDelete(
      topicOwnerId: map['topic_owner_id'] as int,
      topicId: map['topic_id'] as int,
      id: map['id'] as int,
    );
  }
}
