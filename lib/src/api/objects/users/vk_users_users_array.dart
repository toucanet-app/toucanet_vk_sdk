import 'package:meta/meta.dart';

class VKUsersUsersArray {
  /// Users number.
  final int count;

  /// The list of User ID.
  final List<int> items;

  const VKUsersUsersArray({
    @required this.count,
    @required this.items,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKUsersUsersArray.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKUsersUsersArray(
      count: map['count'] as int,
      items: map['items'] as List<int>,
    );
  }
}
