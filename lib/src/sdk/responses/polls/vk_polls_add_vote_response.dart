/// .
class VKPollsAddVoteResponse {
  final int value;

  const VKPollsAddVoteResponse._(this.value);

  factory VKPollsAddVoteResponse(value) {
    if (!values.contains(value)) return null;
    return VKPollsAddVoteResponse._(value);
  }

  static const VKPollsAddVoteResponse no = VKPollsAddVoteResponse._(0);

  static const VKPollsAddVoteResponse yes = VKPollsAddVoteResponse._(1);

  static List get values => const [0, 1];

  @override
  String toString() => '$value';
}
