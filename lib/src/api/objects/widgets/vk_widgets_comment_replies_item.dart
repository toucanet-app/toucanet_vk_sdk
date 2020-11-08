import '../users/vk_users_user_full.dart';
import 'vk_widgets_widget_likes.dart';

class VKWidgetsCommentRepliesItem {
  /// Comment ID.
  final int cid;

  /// Date when the comment has been added in Unixtime.
  final int date;

  final VKWidgetsWidgetLikes likes;

  /// Comment text.
  final String text;

  /// User ID.
  final int uid;

  final VKUsersUserFull user;

  const VKWidgetsCommentRepliesItem({
    this.cid,
    this.date,
    this.likes,
    this.text,
    this.uid,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cid': cid,
      'date': date,
      'likes': likes?.toMap(),
      'text': text,
      'uid': uid,
      'user': user?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKWidgetsCommentRepliesItem.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKWidgetsCommentRepliesItem(
      cid: map['cid'] as int,
      date: map['date'] as int,
      likes: VKWidgetsWidgetLikes.fromMap(map['likes']),
      text: map['text'] as String,
      uid: map['uid'] as int,
      user: VKUsersUserFull.fromMap(map['user']),
    );
  }
}
