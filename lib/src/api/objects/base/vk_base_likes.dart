import 'vk_base_bool_int.dart';

class VKBaseLikes {
  /// Likes number.
  final int count;

  /// Information whether current user likes the photo.
  final VKBaseBoolInt userLikes;

  const VKBaseLikes({
    this.count,
    this.userLikes,
  }) : assert(count == null || count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'user_likes': userLikes?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseLikes.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKBaseLikes(
      count: map['count'] as int,
      userLikes: VKBaseBoolInt(map['user_likes']),
    );
  }
}
