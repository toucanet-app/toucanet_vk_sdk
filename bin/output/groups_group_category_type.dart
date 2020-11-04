import 'package:meta/meta.dart';

class GroupsGroupCategoryType {
  final int id;

  final String name;

  const GroupsGroupCategoryType({
    @required this.id,
    @required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory GroupsGroupCategoryType.fromMap(Map<String, dynamic> map) {
    return GroupsGroupCategoryType(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
}
