import 'polls_friend.dart';
import 'polls_background.dart';
import 'polls_answer.dart';
import 'package:meta/meta.dart';

class PollsPoll {
  /// Information whether the field is anonymous
  final bool anonymous;

  final List<PollsFriend> friends;

  /// Information whether the poll with multiple choices.
  final bool multiple;

  /// Current user's answer ID.
  final int answerId;

  final int endDate;

  /// Current user's answer IDs.
  final List<int> answerIds;

  final bool closed;

  final bool isBoard;

  final bool canEdit;

  final bool canVote;

  final bool canReport;

  final bool canShare;

  final PollsBackground photo;

  final List<PollsAnswer> answers;

  /// Date when poll has been created in Unixtime.
  final int created;

  /// Poll ID.
  final int id;

  /// Poll owner's ID.
  final int ownerId;

  /// Poll author's ID.
  final int authorId;

  /// Poll question.
  final String question;

  final PollsBackground background;

  /// Votes number.
  final int votes;

  final bool disableUnvote;

  const PollsPoll({
    @required this.anonymous,
    this.friends,
    @required this.multiple,
    this.answerId,
    @required this.endDate,
    this.answerIds,
    @required this.closed,
    @required this.isBoard,
    @required this.canEdit,
    @required this.canVote,
    @required this.canReport,
    @required this.canShare,
    this.photo,
    @required this.answers,
    @required this.created,
    @required this.id,
    @required this.ownerId,
    this.authorId,
    @required this.question,
    this.background,
    @required this.votes,
    @required this.disableUnvote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anonymous': anonymous,
      'friends': friends?.map((item) => item?.toMap()),
      'multiple': multiple,
      'answer_id': answerId,
      'end_date': endDate,
      'answer_ids': answerIds,
      'closed': closed,
      'is_board': isBoard,
      'can_edit': canEdit,
      'can_vote': canVote,
      'can_report': canReport,
      'can_share': canShare,
      'photo': photo?.toMap(),
      'answers': answers?.map((item) => item?.toMap()),
      'created': created,
      'id': id,
      'owner_id': ownerId,
      'author_id': authorId,
      'question': question,
      'background': background?.toMap(),
      'votes': votes,
      'disable_unvote': disableUnvote,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory PollsPoll.fromMap(Map<String, dynamic> map) {
    return PollsPoll(
      anonymous: map['anonymous'] as bool,
      friends: map['friends']?.map((item) => PollsFriend.fromMap(item)),
      multiple: map['multiple'] as bool,
      answerId: map['answer_id'] as int,
      endDate: map['end_date'] as int,
      answerIds: map['answer_ids'] as List<int>,
      closed: map['closed'] as bool,
      isBoard: map['is_board'] as bool,
      canEdit: map['can_edit'] as bool,
      canVote: map['can_vote'] as bool,
      canReport: map['can_report'] as bool,
      canShare: map['can_share'] as bool,
      photo: PollsBackground.fromMap(map['photo']),
      answers: map['answers']?.map((item) => PollsAnswer.fromMap(item)),
      created: map['created'] as int,
      id: map['id'] as int,
      ownerId: map['owner_id'] as int,
      authorId: map['author_id'] as int,
      question: map['question'] as String,
      background: PollsBackground.fromMap(map['background']),
      votes: map['votes'] as int,
      disableUnvote: map['disable_unvote'] as bool,
    );
  }
}
