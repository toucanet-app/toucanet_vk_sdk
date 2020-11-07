import 'package:meta/meta.dart';

class VKBaseCity {
  /// City ID.
  final int id;

  /// City title.
  final String title;

  const VKBaseCity({
    @required this.id,
    @required this.title,
  }) : assert(id >= 1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseCity.fromMap(Map<String, dynamic> map) {
    return VKBaseCity(
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }
}
