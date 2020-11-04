import 'package:meta/meta.dart';

class GroupsGroupsArray {
  /// Communities number.
  final int count;

  /// The list of Community ID.
  final List<int> items;

  const GroupsGroupsArray({
    @required this.count,
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory GroupsGroupsArray.fromMap(Map<String, dynamic> map) {
    return GroupsGroupsArray(
      count: map['count'] as int,
      items: map['items'] as List<int>,
    );
  }
}
