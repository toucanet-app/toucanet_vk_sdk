import 'callback_message_type.dart';
import 'package:meta/meta.dart';

class CallbackMessageBase {
  final CallbackMessageType type;

  final Map<String, dynamic> object;

  final int groupId;

  const CallbackMessageBase({
    @required this.type,
    @required this.object,
    @required this.groupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type?.value,
      'object': object,
      'group_id': groupId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory CallbackMessageBase.fromMap(Map<String, dynamic> map) {
    return CallbackMessageBase(
      type: CallbackMessageType(map['type']),
      object: map['object'] as Map<String, dynamic>,
      groupId: map['group_id'] as int,
    );
  }
}
