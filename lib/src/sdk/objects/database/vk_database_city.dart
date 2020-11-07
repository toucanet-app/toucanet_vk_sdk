import 'package:meta/meta.dart';

import '../base/vk_base_bool_int.dart';

class VKDatabaseCity {
  /// Object ID.
  final int id;

  /// Object title.
  final String title;

  /// Area title.
  final String area;

  /// Region title.
  final String region;

  /// Information whether the city is included in important cities list.
  final VKBaseBoolInt important;

  const VKDatabaseCity({
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

  factory VKDatabaseCity.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKDatabaseCity(
      id: map['id'] as int,
      title: map['title'] as String,
      area: map['area'] as String,
      region: map['region'] as String,
      important: VKBaseBoolInt(map['important']),
    );
  }
}
