import 'vk_groups_group_category_type.dart';

class VKGroupsGroupPublicCategoryList {
  final int id;

  final String name;

  final List<VKGroupsGroupCategoryType> subcategories;

  const VKGroupsGroupPublicCategoryList({
    this.id,
    this.name,
    this.subcategories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'subcategories': subcategories
          ?.map(
            (item) => item?.toMap(),
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsGroupPublicCategoryList.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsGroupPublicCategoryList(
      id: map['id'] as int,
      name: map['name'] as String,
      subcategories: map['subcategories']
          ?.map<VKGroupsGroupCategoryType>(
            (item) => VKGroupsGroupCategoryType.fromMap(item),
          )
          ?.toList(),
    );
  }
}
