import 'package:meta/meta.dart';

class GroupsSubjectItem {
  /// Subject ID.
  final int id;

  /// Subject title.
  final String name;

  const GroupsSubjectItem({
    @required this.id,
    @required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory GroupsSubjectItem.fromMap(Map<String, dynamic> map) {
    return GroupsSubjectItem(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
}
