import 'package:meta/meta.dart';

class VKPollsAnswer {
  /// Answer ID.
  final int id;

  /// Answer rate in percents.
  final double rate;

  /// Answer text.
  final String text;

  /// Votes number.
  final int votes;

  const VKPollsAnswer({
    @required this.id,
    @required this.rate,
    @required this.text,
    @required this.votes,
  })  : assert(id >= 0),
        assert(votes >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'rate': rate,
      'text': text,
      'votes': votes,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPollsAnswer.fromMap(Map<String, dynamic> map) {
    return VKPollsAnswer(
      id: map['id'] as int,
      rate: map['rate'] as double,
      text: map['text'] as String,
      votes: map['votes'] as int,
    );
  }
}
