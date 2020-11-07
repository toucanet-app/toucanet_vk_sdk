import 'package:meta/meta.dart';

class VKWallPostCopyright {
  final int id;

  final String link;

  final String name;

  final String type;

  const VKWallPostCopyright({
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

  factory VKWallPostCopyright.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKWallPostCopyright(
      id: map['id'] as int,
      link: map['link'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
