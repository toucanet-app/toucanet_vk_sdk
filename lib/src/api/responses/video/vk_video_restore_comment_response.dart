/// .
class VKVideoRestoreCommentResponse {
  final int value;

  const VKVideoRestoreCommentResponse._(this.value);

  factory VKVideoRestoreCommentResponse(value) {
    if (!values.contains(value)) return null;
    return VKVideoRestoreCommentResponse._(value);
  }

  static const VKVideoRestoreCommentResponse no =
      VKVideoRestoreCommentResponse._(0);

  static const VKVideoRestoreCommentResponse yes =
      VKVideoRestoreCommentResponse._(1);

  static List get values => const [0, 1];

  @override
  String toString() => '$value';
}
