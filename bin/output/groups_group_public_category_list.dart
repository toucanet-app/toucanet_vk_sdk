import 'groups_group_category_type.dart';

class GroupsGroupPublicCategoryList {
  final int id;

  final String name;

  final List<GroupsGroupCategoryType> subcategories;

  const GroupsGroupPublicCategoryList({
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

  factory GroupsGroupPublicCategoryList.fromMap(Map<String, dynamic> map) {
    return GroupsGroupPublicCategoryList(
      id: map['id'] as int,
      name: map['name'] as String,
      subcategories: map['subcategories']?.map((item) => GroupsGroupCategoryType.fromMap(item)),
    );
  }
}
