import 'package:meta/meta.dart';

class NewsfeedList {
  /// List ID.
  final int id;

  /// List title.
  final String title;

  const NewsfeedList({
    @required this.id,
    @required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory NewsfeedList.fromMap(Map<String, dynamic> map) {
    return NewsfeedList(
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }
}
