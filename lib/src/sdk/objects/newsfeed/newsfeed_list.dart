import 'package:meta/meta.dart';

class VKNewsfeedList {
  /// List ID.
  final int id;

  /// List title.
  final String title;

  const VKNewsfeedList({
    @required this.id,
    @required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKNewsfeedList.fromMap(Map<String, dynamic> map) {
    return VKNewsfeedList(
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }
}
