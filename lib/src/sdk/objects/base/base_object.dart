import 'package:meta/meta.dart';

class VKBaseObject {
  /// Object ID.
  final int id;

  /// Object title.
  final String title;

  const VKBaseObject({
    @required this.id,
    @required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseObject.fromMap(Map<String, dynamic> map) {
    return VKBaseObject(
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }
}
