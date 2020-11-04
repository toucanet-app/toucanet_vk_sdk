import 'package:meta/meta.dart';

class PollsAnswer {
  /// Answer ID.
  final int id;

  /// Answer rate in percents.
  final double rate;

  /// Answer text.
  final String text;

  /// Votes number.
  final int votes;

  const PollsAnswer({
    @required this.id,
    @required this.rate,
    @required this.text,
    @required this.votes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'rate': rate,
      'text': text,
      'votes': votes,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory PollsAnswer.fromMap(Map<String, dynamic> map) {
    return PollsAnswer(
      id: map['id'] as int,
      rate: map['rate'] as double,
      text: map['text'] as String,
      votes: map['votes'] as int,
    );
  }
}
