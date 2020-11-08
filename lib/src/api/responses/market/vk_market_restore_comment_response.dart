/// .
class VKMarketRestoreCommentResponse {
  final int value;

  const VKMarketRestoreCommentResponse._(this.value);

  factory VKMarketRestoreCommentResponse(value) {
    if (!values.contains(value)) return null;
    return VKMarketRestoreCommentResponse._(value);
  }

  static const VKMarketRestoreCommentResponse no =
      VKMarketRestoreCommentResponse._(0);

  static const VKMarketRestoreCommentResponse yes =
      VKMarketRestoreCommentResponse._(1);

  static List get values => const [0, 1];

  @override
  String toString() => '$value';
}
