import 'package:meta/meta.dart';

class VKGroupsGroupsArray {
  /// Communities number.
  final int count;

  /// The list of Community ID.
  final List<int> items;

  const VKGroupsGroupsArray({
    @required this.count,
    @required this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsGroupsArray.fromMap(Map<String, dynamic> map) {
    return VKGroupsGroupsArray(
      count: map['count'] as int,
      items: map['items'] as List<int>,
    );
  }
}
