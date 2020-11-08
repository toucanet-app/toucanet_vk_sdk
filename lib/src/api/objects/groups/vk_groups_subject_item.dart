import 'package:meta/meta.dart';

class VKGroupsSubjectItem {
  /// Subject ID.
  final int id;

  /// Subject title.
  final String name;

  const VKGroupsSubjectItem({
    @required this.id,
    @required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsSubjectItem.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsSubjectItem(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
}
