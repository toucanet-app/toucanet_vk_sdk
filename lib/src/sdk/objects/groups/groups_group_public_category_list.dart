import 'groups_group_category_type.dart';

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
      'subcategories': subcategories?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsGroupPublicCategoryList.fromMap(Map<String, dynamic> map) {
    return VKGroupsGroupPublicCategoryList(
      id: map['id'] as int,
      name: map['name'] as String,
      subcategories: map['subcategories']
          ?.map((item) => VKGroupsGroupCategoryType.fromMap(item)),
    );
  }
}
