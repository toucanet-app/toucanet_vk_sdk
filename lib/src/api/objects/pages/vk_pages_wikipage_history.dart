import 'package:meta/meta.dart';

class VKPagesWikipageHistory {
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

  const VKPagesWikipageHistory({
    @required this.id,
    @required this.length,
    @required this.date,
    @required this.editorId,
    @required this.editorName,
  })  : assert(id >= 0),
        assert(length >= 0),
        assert(date >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'length': length,
      'date': date,
      'editor_id': editorId,
      'editor_name': editorName,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPagesWikipageHistory.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPagesWikipageHistory(
      id: map['id'] as int,
      length: map['length'] as int,
      date: map['date'] as int,
      editorId: map['editor_id'] as int,
      editorName: map['editor_name'] as String,
    );
  }
}
