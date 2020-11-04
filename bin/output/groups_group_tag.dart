import 'package:meta/meta.dart';

class GroupsGroupTag {
  final int id;

  final String name;

  final String color;

  final int uses;

  const GroupsGroupTag({
    @required this.id,
    @required this.name,
    @required this.color,
    this.uses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'color': color,
      'uses': uses,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory GroupsGroupTag.fromMap(Map<String, dynamic> map) {
    return GroupsGroupTag(
      id: map['id'] as int,
      name: map['name'] as String,
      color: map['color'] as String,
      uses: map['uses'] as int,
    );
  }
}
