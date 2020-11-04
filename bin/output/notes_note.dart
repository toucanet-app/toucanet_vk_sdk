import 'base_bool_int.dart';
import 'package:meta/meta.dart';

class NotesNote {
  final int readComments;

  /// Information whether current user can comment the note.
  final BaseBoolInt canComment;

  /// Comments number.
  final int comments;

  /// Date when the note has been created in Unixtime.
  final int date;

  /// Note ID.
  final int id;

  /// Note owner's ID.
  final int ownerId;

  /// Note text.
  final String text;

  /// Note text in wiki format.
  final String textWiki;

  /// Note title.
  final String title;

  /// URL of the page with note preview.
  final String viewUrl;

  const NotesNote({
    this.readComments,
    this.canComment,
    @required this.comments,
    @required this.date,
    @required this.id,
    @required this.ownerId,
    this.text,
    this.textWiki,
    @required this.title,
    @required this.viewUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'read_comments': readComments,
      'can_comment': canComment?.value,
      'comments': comments,
      'date': date,
      'id': id,
      'owner_id': ownerId,
      'text': text,
      'text_wiki': textWiki,
      'title': title,
      'view_url': viewUrl,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory NotesNote.fromMap(Map<String, dynamic> map) {
    return NotesNote(
      readComments: map['read_comments'] as int,
      canComment: BaseBoolInt(map['can_comment']),
      comments: map['comments'] as int,
      date: map['date'] as int,
      id: map['id'] as int,
      ownerId: map['owner_id'] as int,
      text: map['text'] as String,
      textWiki: map['text_wiki'] as String,
      title: map['title'] as String,
      viewUrl: map['view_url'] as String,
    );
  }
}
