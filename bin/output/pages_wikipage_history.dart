import 'package:meta/meta.dart';

class PagesWikipageHistory {
  /// Version ID.
  final int id;

  /// Page size in bytes.
  final int length;

  /// Date when the page has been edited in Unixtime.
  final int date;

  /// Last editor ID.
  final int editorId;

  /// Last editor name.
  final String editorName;

  const PagesWikipageHistory({
    @required this.id,
    @required this.length,
    @required this.date,
    @required this.editorId,
    @required this.editorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'length': length,
      'date': date,
      'editor_id': editorId,
      'editor_name': editorName,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory PagesWikipageHistory.fromMap(Map<String, dynamic> map) {
    return PagesWikipageHistory(
      id: map['id'] as int,
      length: map['length'] as int,
      date: map['date'] as int,
      editorId: map['editor_id'] as int,
      editorName: map['editor_name'] as String,
    );
  }
}
