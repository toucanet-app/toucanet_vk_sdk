import 'package:meta/meta.dart';

class VKMessagesKeyboard {
  /// Community or bot, which set this keyboard.
  final int authorId;

  final List<dynamic> buttons;

  /// Should this keyboard disappear on first use.
  final bool oneTime;

  final bool inline;

  const VKMessagesKeyboard({
    this.authorId,
    @required this.buttons,
    @required this.oneTime,
    this.inline,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'author_id': authorId,
      'buttons': buttons,
      'one_time': oneTime,
      'inline': inline,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMessagesKeyboard.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMessagesKeyboard(
      authorId: map['author_id'] as int,
      buttons: map['buttons'] as List<dynamic>,
      oneTime: map['one_time'] as bool,
      inline: map['inline'] as bool,
    );
  }
}
