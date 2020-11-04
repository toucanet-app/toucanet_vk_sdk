import 'callback_message_type.dart';
import 'package:meta/meta.dart';

class CallbackConfirmationMessage {
  final CallbackMessageType type;

  final int groupId;

  final String secret;

  const CallbackConfirmationMessage({
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

  factory CallbackConfirmationMessage.fromMap(Map<String, dynamic> map) {
    return CallbackConfirmationMessage(
      type: CallbackMessageType(map['type']),
      groupId: map['group_id'] as int,
      secret: map['secret'] as String,
    );
  }
}
