import 'package:meta/meta.dart';

import 'vk_messages_keyboard_button_action.dart';

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
    if (map == null) return null;

    return VKMessagesKeyboardButton(
      action: VKMessagesKeyboardButtonAction.fromMap(map['action']),
      color: map['color'] as String,
    );
  }
}
