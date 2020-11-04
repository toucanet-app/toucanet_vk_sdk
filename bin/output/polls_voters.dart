import 'polls_voters_users.dart';

class PollsVoters {
  /// Answer ID.
  final int answerId;

  final PollsVotersUsers users;

  const PollsVoters({
    this.answerId,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'answer_id': answerId,
      'users': users?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory PollsVoters.fromMap(Map<String, dynamic> map) {
    return PollsVoters(
      answerId: map['answer_id'] as int,
      users: PollsVotersUsers.fromMap(map['users']),
    );
  }
}
