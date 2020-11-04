import 'base_object_with_name.dart';
import 'package:meta/meta.dart';

class GroupsGroupCategory {
  /// Category ID.
  final int id;

  /// Category name.
  final String name;

  final List<BaseObjectWithName> subcategories;

  const GroupsGroupCategory({
    @required this.id,
    @required this.name,
    this.subcategories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'subcategories': subcategories?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory GroupsGroupCategory.fromMap(Map<String, dynamic> map) {
    return GroupsGroupCategory(
      id: map['id'] as int,
      name: map['name'] as String,
      subcategories: map['subcategories']?.map((item) => BaseObjectWithName.fromMap(item)),
    );
  }
}
