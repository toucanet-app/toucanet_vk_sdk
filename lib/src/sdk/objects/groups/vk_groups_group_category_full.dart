import 'package:meta/meta.dart';

import 'vk_groups_group.dart';
import 'vk_groups_group_category.dart';

class VKGroupsGroupCategoryFull {
  /// Category ID.
  final int id;

  /// Category name.
  final String name;

  /// Pages number.
  final int pageCount;

  final List<VKGroupsGroup> pagePreviews;

  final List<VKGroupsGroupCategory> subcategories;

  const VKGroupsGroupCategoryFull({
    @required this.id,
    @required this.name,
    @required this.pageCount,
    @required this.pagePreviews,
    this.subcategories,
  }) : assert(id >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'page_count': pageCount,
      'page_previews': pagePreviews?.map((item) => item?.toMap())?.toList(),
      'subcategories': subcategories?.map((item) => item?.toMap())?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsGroupCategoryFull.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsGroupCategoryFull(
      id: map['id'] as int,
      name: map['name'] as String,
      pageCount: map['page_count'] as int,
      pagePreviews: map['page_previews']
          ?.map((item) => VKGroupsGroup.fromMap(item))
          ?.toList(),
      subcategories: map['subcategories']
          ?.map((item) => VKGroupsGroupCategory.fromMap(item))
          ?.toList(),
    );
  }
}
