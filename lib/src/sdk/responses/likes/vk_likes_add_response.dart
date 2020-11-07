import 'package:meta/meta.dart';

class VKLikesAddResponse {
  /// Total likes number.
  final int likes;

  const VKLikesAddResponse({
    @required this.likes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'likes': likes,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKLikesAddResponse.fromMap(Map<String, dynamic> map) {
    return VKLikesAddResponse(
      likes: map['likes'] as int,
    );
  }
}
