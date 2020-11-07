import 'package:meta/meta.dart';

class VKLikesDeleteResponse {
  /// Total likes number.
  final int likes;

  const VKLikesDeleteResponse({
    @required this.likes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'likes': likes,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKLikesDeleteResponse.fromMap(Map<String, dynamic> map) {
    return VKLikesDeleteResponse(
      likes: map['likes'] as int,
    );
  }
}
