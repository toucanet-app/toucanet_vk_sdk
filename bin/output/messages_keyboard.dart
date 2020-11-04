import 'package:meta/meta.dart';

class MessagesKeyboard {
  /// Community or bot, which set this keyboard.
  final int authorId;

  final List<List> buttons;

  /// Should this keyboard disappear on first use.
  final bool oneTime;

  final bool inline;

  const MessagesKeyboard({
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

  factory MessagesKeyboard.fromMap(Map<String, dynamic> map) {
    return MessagesKeyboard(
      authorId: map['author_id'] as int,
      buttons: map['buttons'] as List<List>,
      oneTime: map['one_time'] as bool,
      inline: map['inline'] as bool,
    );
  }
}
