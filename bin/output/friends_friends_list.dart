import 'package:meta/meta.dart';

class FriendsFriendsList {
  /// List ID.
  final int id;

  /// List title.
  final String name;

  const FriendsFriendsList({
    @required this.id,
    @required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory FriendsFriendsList.fromMap(Map<String, dynamic> map) {
    return FriendsFriendsList(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
}
