import 'package:meta/meta.dart';

import '../base/vk_base_bool_int.dart';
import '../polls/vk_polls_answer.dart';

class VKBoardTopicPoll {
  /// Current user's answer ID.
  final int answerId;

  final List<VKPollsAnswer> answers;

  /// Date when poll has been created in Unixtime.
  final int created;

  /// Information whether the poll is closed.
  final VKBaseBoolInt isClosed;

  /// Poll owner's ID.
  final int ownerId;

  /// Poll ID.
  final int pollId;

  /// Poll question.
  final String question;

  /// Votes number.
  final String votes;

  const VKBoardTopicPoll({
    @required this.answerId,
    @required this.answers,
    @required this.created,
    this.isClosed,
    @required this.ownerId,
    @required this.pollId,
    @required this.question,
    @required this.votes,
  })  : assert(answerId >= 0),
        assert(created >= 0),
        assert(pollId >= 1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'answer_id': answerId,
      'answers': answers?.map((item) => item?.toMap())?.toList(),
      'created': created,
      'is_closed': isClosed?.value,
      'owner_id': ownerId,
      'poll_id': pollId,
      'question': question,
      'votes': votes,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBoardTopicPoll.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKBoardTopicPoll(
      answerId: map['answer_id'] as int,
      answers:
          map['answers']?.map((item) => VKPollsAnswer.fromMap(item))?.toList(),
      created: map['created'] as int,
      isClosed: VKBaseBoolInt(map['is_closed']),
      ownerId: map['owner_id'] as int,
      pollId: map['poll_id'] as int,
      question: map['question'] as String,
      votes: map['votes'] as String,
    );
  }
}
