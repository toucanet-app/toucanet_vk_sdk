import 'package:meta/meta.dart';

class VKFriendsFriendsList {
  /// List ID.
  final int id;

  /// List title.
  final String name;

  const VKFriendsFriendsList({
    @required this.id,
    @required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKFriendsFriendsList.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKFriendsFriendsList(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
}
