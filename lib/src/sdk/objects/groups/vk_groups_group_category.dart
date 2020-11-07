import 'package:meta/meta.dart';

import '../base/vk_base_object_with_name.dart';

class VKGroupsGroupCategory {
  /// Category ID.
  final int id;

  /// Category name.
  final String name;

  final List<VKBaseObjectWithName> subcategories;

  const VKGroupsGroupCategory({
    @required this.id,
    @required this.name,
    this.subcategories,
  }) : assert(id >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'subcategories': subcategories?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsGroupCategory.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsGroupCategory(
      id: map['id'] as int,
      name: map['name'] as String,
      subcategories: map['subcategories']
          ?.map((item) => VKBaseObjectWithName.fromMap(item))
          ?.toList(),
    );
  }
}
