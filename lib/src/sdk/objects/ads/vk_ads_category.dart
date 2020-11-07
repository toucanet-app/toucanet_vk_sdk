import 'package:meta/meta.dart';

import '../base/vk_base_object_with_name.dart';

class VKAdsCategory {
  /// Category ID.
  final int id;

  /// Category name.
  final String name;

  final List<VKBaseObjectWithName> subcategories;

  const VKAdsCategory({
    @required this.id,
    @required this.name,
    this.subcategories,
  }) : assert(id >= 1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'subcategories': subcategories?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdsCategory.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdsCategory(
      id: map['id'] as int,
      name: map['name'] as String,
      subcategories: map['subcategories']
          ?.map((item) => VKBaseObjectWithName.fromMap(item))
          ?.toList(),
    );
  }
}
