import 'base_bool_int.dart';
import 'package:meta/meta.dart';

class DatabaseCity {
  /// Object ID.
  final int id;

  /// Object title.
  final String title;

  /// Area title.
  final String area;

  /// Region title.
  final String region;

  /// Information whether the city is included in important cities list.
  final BaseBoolInt important;

  const DatabaseCity({
    @required this.id,
    @required this.title,
    this.area,
    this.region,
    this.important,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'area': area,
      'region': region,
      'important': important?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory DatabaseCity.fromMap(Map<String, dynamic> map) {
    return DatabaseCity(
      id: map['id'] as int,
      title: map['title'] as String,
      area: map['area'] as String,
      region: map['region'] as String,
      important: BaseBoolInt(map['important']),
    );
  }
}
