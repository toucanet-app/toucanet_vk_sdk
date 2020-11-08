import 'package:meta/meta.dart';

class VKBaseObjectWithName {
  /// Object ID.
  final int id;

  /// Object name.
  final String name;

  const VKBaseObjectWithName({
    @required this.id,
    @required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseObjectWithName.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKBaseObjectWithName(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
}
