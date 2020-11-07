import 'package:meta/meta.dart';

import 'messages_keyboard_button_action.dart';

class VKMessagesKeyboardButton {
  final VKMessagesKeyboardButtonAction action;

  /// Button color.
  final String color;

  const VKMessagesKeyboardButton({
    @required this.action,
    this.color,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action?.toMap(),
      'color': color,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesKeyboardButton.fromMap(Map<String, dynamic> map) {
    return VKMessagesKeyboardButton(
      action: VKMessagesKeyboardButtonAction.fromMap(map['action']),
      color: map['color'] as String,
    );
  }
}
