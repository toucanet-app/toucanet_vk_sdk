import 'polls_answer.dart';
import 'base_bool_int.dart';
import 'package:meta/meta.dart';

class BoardTopicPoll {
  /// Current user's answer ID.
  final int answerId;

  final List<PollsAnswer> answers;

  /// Date when poll has been created in Unixtime.
  final int created;

  /// Information whether the poll is closed.
  final BaseBoolInt isClosed;

  /// Poll owner's ID.
  final int ownerId;

  /// Poll ID.
  final int pollId;

  /// Poll question.
  final String question;

  /// Votes number.
  final String votes;

  const BoardTopicPoll({
    @required this.answerId,
    @required this.answers,
    @required this.created,
    this.isClosed,
    @required this.ownerId,
    @required this.pollId,
    @required this.question,
    @required this.votes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'answer_id': answerId,
      'answers': answers?.map((item) => item?.toMap()),
      'created': created,
      'is_closed': isClosed?.value,
      'owner_id': ownerId,
      'poll_id': pollId,
      'question': question,
      'votes': votes,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory BoardTopicPoll.fromMap(Map<String, dynamic> map) {
    return BoardTopicPoll(
      answerId: map['answer_id'] as int,
      answers: map['answers']?.map((item) => PollsAnswer.fromMap(item)),
      created: map['created'] as int,
      isClosed: BaseBoolInt(map['is_closed']),
      ownerId: map['owner_id'] as int,
      pollId: map['poll_id'] as int,
      question: map['question'] as String,
      votes: map['votes'] as String,
    );
  }
}
