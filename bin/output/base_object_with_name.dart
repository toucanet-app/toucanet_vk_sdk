import 'package:meta/meta.dart';

class BaseObjectWithName {
  /// Object ID.
  final int id;

  /// Object name.
  final String name;

  const BaseObjectWithName({
    @required this.id,
    @required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory BaseObjectWithName.fromMap(Map<String, dynamic> map) {
    return BaseObjectWithName(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
}
