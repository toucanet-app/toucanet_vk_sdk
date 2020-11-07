import 'package:meta/meta.dart';

class VKDocsDocTypes {
  /// Doc type ID.
  final int id;

  /// Doc type title.
  final String name;

  /// Number of docs.
  final int count;

  const VKDocsDocTypes({
    @required this.id,
    @required this.name,
    @required this.count,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'count': count,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKDocsDocTypes.fromMap(Map<String, dynamic> map) {
    return VKDocsDocTypes(
      id: map['id'] as int,
      name: map['name'] as String,
      count: map['count'] as int,
    );
  }
}
