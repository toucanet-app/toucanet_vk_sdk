import 'package:meta/meta.dart';

class CallbackPollVoteNew {
  final int ownerId;

  final int pollId;

  final int optionId;

  final int userId;

  const CallbackPollVoteNew({
    @required this.ownerId,
    @required this.pollId,
    @required this.optionId,
    @required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'owner_id': ownerId,
      'poll_id': pollId,
      'option_id': optionId,
      'user_id': userId,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory CallbackPollVoteNew.fromMap(Map<String, dynamic> map) {
    return CallbackPollVoteNew(
      ownerId: map['owner_id'] as int,
      pollId: map['poll_id'] as int,
      optionId: map['option_id'] as int,
      userId: map['user_id'] as int,
    );
  }
}
