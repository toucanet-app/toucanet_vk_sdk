import 'package:meta/meta.dart';

class VKGroupsGroupCategoryType {
  final int id;

  final String name;

  const VKGroupsGroupCategoryType({
    @required this.id,
    @required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsGroupCategoryType.fromMap(Map<String, dynamic> map) {
    return VKGroupsGroupCategoryType(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
}
