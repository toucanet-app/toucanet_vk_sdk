import 'vk_polls_voters_users.dart';

class VKPollsVoters {
  /// Answer ID.
  final int answerId;

  final VKPollsVotersUsers users;

  const VKPollsVoters({
    this.answerId,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'answer_id': answerId,
      'users': users?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPollsVoters.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPollsVoters(
      answerId: map['answer_id'] as int,
      users: VKPollsVotersUsers.fromMap(map['users']),
    );
  }
}
