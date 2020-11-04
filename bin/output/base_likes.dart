import 'base_bool_int.dart';

class BaseLikes {
  /// Likes number.
  final int count;

  /// Information whether current user likes the photo.
  final BaseBoolInt userLikes;

  const BaseLikes({
    this.count,
    this.userLikes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'user_likes': userLikes?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory BaseLikes.fromMap(Map<String, dynamic> map) {
    return BaseLikes(
      count: map['count'] as int,
      userLikes: BaseBoolInt(map['user_likes']),
    );
  }
}
