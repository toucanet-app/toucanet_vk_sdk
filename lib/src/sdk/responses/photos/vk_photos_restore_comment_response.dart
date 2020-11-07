/// .
class VKPhotosRestoreCommentResponse {
  final int value;

  const VKPhotosRestoreCommentResponse._(this.value);

  factory VKPhotosRestoreCommentResponse(value) {
    if (!values.contains(value)) return null;
    return VKPhotosRestoreCommentResponse._(value);
  }

  static const VKPhotosRestoreCommentResponse no =
      VKPhotosRestoreCommentResponse._(0);

  static const VKPhotosRestoreCommentResponse yes =
      VKPhotosRestoreCommentResponse._(1);

  static List get values => const [0, 1];

  @override
  String toString() => '$value';
}
