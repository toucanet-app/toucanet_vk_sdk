import 'widgets_widget_likes.dart';
import 'users_user_full.dart';

class WidgetsCommentRepliesItem {
  /// Comment ID.
  final int cid;

  /// Date when the comment has been added in Unixtime.
  final int date;

  final WidgetsWidgetLikes likes;

  /// Comment text.
  final String text;

  /// User ID.
  final int uid;

  final UsersUserFull user;

  const WidgetsCommentRepliesItem({
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

  factory WidgetsCommentRepliesItem.fromMap(Map<String, dynamic> map) {
    return WidgetsCommentRepliesItem(
      cid: map['cid'] as int,
      date: map['date'] as int,
      likes: WidgetsWidgetLikes.fromMap(map['likes']),
      text: map['text'] as String,
      uid: map['uid'] as int,
      user: UsersUserFull.fromMap(map['user']),
    );
  }
}
