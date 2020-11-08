/// .
class VKPhotosDeleteCommentResponse {
  final int value;

  const VKPhotosDeleteCommentResponse._(this.value);

  factory VKPhotosDeleteCommentResponse(value) {
    if (!values.contains(value)) return null;
    return VKPhotosDeleteCommentResponse._(value);
  }

  static const VKPhotosDeleteCommentResponse no =
      VKPhotosDeleteCommentResponse._(0);

  static const VKPhotosDeleteCommentResponse yes =
      VKPhotosDeleteCommentResponse._(1);

  static List get values => const [0, 1];

  @override
  String toString() => '$value';
}
