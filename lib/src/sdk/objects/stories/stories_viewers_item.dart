import 'package:meta/meta.dart';

import '../users/users_user_full.dart';

class VKStoriesViewersItem {
  /// user has like for this object.
  final bool isLiked;

  /// user id.
  final int userId;

  final VKUsersUserFull user;

  const VKStoriesViewersItem({
    @required this.isLiked,
    @required this.userId,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'is_liked': isLiked,
      'user_id': userId,
      'user': user?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStoriesViewersItem.fromMap(Map<String, dynamic> map) {
    return VKStoriesViewersItem(
      isLiked: map['is_liked'] as bool,
      userId: map['user_id'] as int,
      user: VKUsersUserFull.fromMap(map['user']),
    );
  }
}
