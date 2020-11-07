import 'package:meta/meta.dart';

import 'callback_message_type.dart';

class VKCallbackConfirmationMessage {
  final VKCallbackMessageType type;

  final int groupId;

  final String secret;

  const VKCallbackConfirmationMessage({
    @required this.type,
    @required this.groupId,
    @required this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type?.value,
      'group_id': groupId,
      'secret': secret,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKCallbackConfirmationMessage.fromMap(Map<String, dynamic> map) {
    return VKCallbackConfirmationMessage(
      type: VKCallbackMessageType(map['type']),
      groupId: map['group_id'] as int,
      secret: map['secret'] as String,
    );
  }
}
