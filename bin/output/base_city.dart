import 'package:meta/meta.dart';

class BaseCity {
  /// City ID.
  final int id;

  /// City title.
  final String title;

  const BaseCity({
    @required this.id,
    @required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory BaseCity.fromMap(Map<String, dynamic> map) {
    return BaseCity(
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }
}
