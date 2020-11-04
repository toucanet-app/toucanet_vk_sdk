import 'messages_keyboard_button_action.dart';
import 'package:meta/meta.dart';

class MessagesKeyboardButton {
  final MessagesKeyboardButtonAction action;

  /// Button color.
  final String color;

  const MessagesKeyboardButton({
    @required this.action,
    this.color,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action?.toMap(),
      'color': color,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory MessagesKeyboardButton.fromMap(Map<String, dynamic> map) {
    return MessagesKeyboardButton(
      action: MessagesKeyboardButtonAction.fromMap(map['action']),
      color: map['color'] as String,
    );
  }
}
