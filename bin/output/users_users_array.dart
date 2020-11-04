import 'package:meta/meta.dart';

class UsersUsersArray {
  /// Users number.
  final int count;

  /// The list of User ID.
  final List<int> items;

  const UsersUsersArray({
    @required this.count,
    @required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'items': items,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory UsersUsersArray.fromMap(Map<String, dynamic> map) {
    return UsersUsersArray(
      count: map['count'] as int,
      items: map['items'] as List<int>,
    );
  }
}
