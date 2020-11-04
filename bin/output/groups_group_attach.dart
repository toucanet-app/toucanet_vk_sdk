import 'package:meta/meta.dart';

class GroupsGroupAttach {
  /// group ID.
  final int id;

  /// text of attach.
  final String text;

  /// activity or category of group.
  final String status;

  /// size of group.
  final int size;

  /// is favorite.
  final bool isFavorite;

  const GroupsGroupAttach({
    @required this.id,
    @required this.text,
    @required this.status,
    @required this.size,
    @required this.isFavorite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'text': text,
      'status': status,
      'size': size,
      'is_favorite': isFavorite,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory GroupsGroupAttach.fromMap(Map<String, dynamic> map) {
    return GroupsGroupAttach(
      id: map['id'] as int,
      text: map['text'] as String,
      status: map['status'] as String,
      size: map['size'] as int,
      isFavorite: map['is_favorite'] as bool,
    );
  }
}
