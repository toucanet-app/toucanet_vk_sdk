import 'package:meta/meta.dart';

import 'vk_callback_message_type.dart';

class VKCallbackMessageBase {
  final VKCallbackMessageType type;

  final Map<String, dynamic> object;

  final int groupId;

  const VKCallbackMessageBase({
    @required this.type,
    @required this.object,
    @required this.groupId,
  }) : assert(groupId >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type?.value,
      'object': object,
      'group_id': groupId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKCallbackMessageBase.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKCallbackMessageBase(
      type: VKCallbackMessageType(map['type']),
      object: map['object'] as Map<String, dynamic>,
      groupId: map['group_id'] as int,
    );
  }
}
