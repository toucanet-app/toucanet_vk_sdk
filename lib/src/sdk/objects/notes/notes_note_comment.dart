import 'package:meta/meta.dart';

class VKNotesNoteComment {
  /// Date when the comment has beed added in Unixtime.
  final int date;

  /// Comment ID.
  final int id;

  /// Comment text.
  final String message;

  /// Note ID.
  final int nid;

  /// Note ID.
  final int oid;

  /// ID of replied comment .
  final int replyTo;

  /// Comment author's ID.
  final int uid;

  const VKNotesNoteComment({
    @required this.date,
    @required this.id,
    @required this.message,
    @required this.nid,
    @required this.oid,
    this.replyTo,
    @required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'id': id,
      'message': message,
      'nid': nid,
      'oid': oid,
      'reply_to': replyTo,
      'uid': uid,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNotesNoteComment.fromMap(Map<String, dynamic> map) {
    return VKNotesNoteComment(
      date: map['date'] as int,
      id: map['id'] as int,
      message: map['message'] as String,
      nid: map['nid'] as int,
      oid: map['oid'] as int,
      replyTo: map['reply_to'] as int,
      uid: map['uid'] as int,
    );
  }
}
