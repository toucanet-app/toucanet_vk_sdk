import 'groups_group.dart';
import 'groups_group_category.dart';
import 'package:meta/meta.dart';

class GroupsGroupCategoryFull {
  /// Category ID.
  final int id;

  /// Category name.
  final String name;

  /// Pages number.
  final int pageCount;

  final List<GroupsGroup> pagePreviews;

  final List<GroupsGroupCategory> subcategories;

  const GroupsGroupCategoryFull({
    @required this.id,
    @required this.name,
    @required this.pageCount,
    @required this.pagePreviews,
    this.subcategories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'page_count': pageCount,
      'page_previews': pagePreviews?.map((item) => item?.toMap()),
      'subcategories': subcategories?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory GroupsGroupCategoryFull.fromMap(Map<String, dynamic> map) {
    return GroupsGroupCategoryFull(
      id: map['id'] as int,
      name: map['name'] as String,
      pageCount: map['page_count'] as int,
      pagePreviews:
          map['page_previews']?.map((item) => GroupsGroup.fromMap(item)),
      subcategories: map['subcategories']
          ?.map((item) => GroupsGroupCategory.fromMap(item)),
    );
  }
}
