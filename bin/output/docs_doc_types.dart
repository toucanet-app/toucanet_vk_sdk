import 'package:meta/meta.dart';

class DocsDocTypes {
  /// Doc type ID.
  final int id;

  /// Doc type title.
  final String name;

  /// Number of docs.
  final int count;

  const DocsDocTypes({
    @required this.id,
    @required this.name,
    @required this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'count': count,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory DocsDocTypes.fromMap(Map<String, dynamic> map) {
    return DocsDocTypes(
      id: map['id'] as int,
      name: map['name'] as String,
      count: map['count'] as int,
    );
  }
}
