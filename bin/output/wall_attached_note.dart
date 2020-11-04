import 'package:meta/meta.dart';

class WallAttachedNote {
  /// Comments number.
  final int comments;

  /// Date when the note has been created in Unixtime.
  final int date;

  /// Note ID.
  final int id;

  /// Note owner's ID.
  final int ownerId;

  /// Read comments number.
  final int readComments;

  /// Note title.
  final String title;

  /// URL of the page with note preview.
  final String viewUrl;

  const WallAttachedNote({
    @required this.comments,
    @required this.date,
    @required this.id,
    @required this.ownerId,
    @required this.readComments,
    @required this.title,
    @required this.viewUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comments': comments,
      'date': date,
      'id': id,
      'owner_id': ownerId,
      'read_comments': readComments,
      'title': title,
      'view_url': viewUrl,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory WallAttachedNote.fromMap(Map<String, dynamic> map) {
    return WallAttachedNote(
      comments: map['comments'] as int,
      date: map['date'] as int,
      id: map['id'] as int,
      ownerId: map['owner_id'] as int,
      readComments: map['read_comments'] as int,
      title: map['title'] as String,
      viewUrl: map['view_url'] as String,
    );
  }
}
