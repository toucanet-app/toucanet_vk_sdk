import 'package:meta/meta.dart';

class WallPostCopyright {
  final int id;

  final String link;

  final String name;

  final String type;

  const WallPostCopyright({
    this.id,
    @required this.link,
    @required this.name,
    @required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'link': link,
      'name': name,
      'type': type,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory WallPostCopyright.fromMap(Map<String, dynamic> map) {
    return WallPostCopyright(
      id: map['id'] as int,
      link: map['link'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
