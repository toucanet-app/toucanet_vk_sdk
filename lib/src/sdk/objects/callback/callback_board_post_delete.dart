import 'package:meta/meta.dart';

class VKCallbackBoardPostDelete {
  final int topicOwnerId;

  final int topicId;

  final int id;

  const VKCallbackBoardPostDelete({
    @required this.topicOwnerId,
    @required this.topicId,
    @required this.id,
  })  : assert(topicOwnerId >= 0),
        assert(topicId >= 0),
        assert(id >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topic_owner_id': topicOwnerId,
      'topic_id': topicId,
      'id': id,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKCallbackBoardPostDelete.fromMap(Map<String, dynamic> map) {
    return VKCallbackBoardPostDelete(
      topicOwnerId: map['topic_owner_id'] as int,
      topicId: map['topic_id'] as int,
      id: map['id'] as int,
    );
  }
}
