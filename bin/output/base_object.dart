import 'package:meta/meta.dart';

class BaseObject {
  /// Object ID.
  final int id;

  /// Object title.
  final String title;

  const BaseObject({
    @required this.id,
    @required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory BaseObject.fromMap(Map<String, dynamic> map) {
    return BaseObject(
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }
}
