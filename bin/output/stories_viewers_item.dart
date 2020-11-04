import 'users_user_full.dart';
import 'package:meta/meta.dart';

class StoriesViewersItem {
  /// user has like for this object.
  final bool isLiked;

  /// user id.
  final int userId;

  final UsersUserFull user;

  const StoriesViewersItem({
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

  factory StoriesViewersItem.fromMap(Map<String, dynamic> map) {
    return StoriesViewersItem(
      isLiked: map['is_liked'] as bool,
      userId: map['user_id'] as int,
      user: UsersUserFull.fromMap(map['user']),
    );
  }
}
