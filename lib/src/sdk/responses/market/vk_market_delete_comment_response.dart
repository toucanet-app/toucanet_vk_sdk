/// .
class VKMarketDeleteCommentResponse {
  final int value;

  const VKMarketDeleteCommentResponse._(this.value);

  factory VKMarketDeleteCommentResponse(value) {
    if (!values.contains(value)) return null;
    return VKMarketDeleteCommentResponse._(value);
  }

  static const VKMarketDeleteCommentResponse no =
      VKMarketDeleteCommentResponse._(0);

  static const VKMarketDeleteCommentResponse yes =
      VKMarketDeleteCommentResponse._(1);

  static List get values => const [0, 1];

  @override
  String toString() => '$value';
}
