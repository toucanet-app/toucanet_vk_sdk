/// .
class VKPollsDeleteVoteResponse {
  final int value;

  const VKPollsDeleteVoteResponse._(this.value);

  factory VKPollsDeleteVoteResponse(value) {
    if (!values.contains(value)) return null;
    return VKPollsDeleteVoteResponse._(value);
  }

  static const VKPollsDeleteVoteResponse no = VKPollsDeleteVoteResponse._(0);

  static const VKPollsDeleteVoteResponse yes = VKPollsDeleteVoteResponse._(1);

  static List get values => const [0, 1];

  @override
  String toString() => '$value';
}
