import 'package:meta/meta.dart';

class VKBaseCountry {
  /// Country ID.
  final int id;

  /// Country title.
  final String title;

  const VKBaseCountry({
    @required this.id,
    @required this.title,
  }) : assert(id >= 1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseCountry.fromMap(Map<String, dynamic> map) {
    return VKBaseCountry(
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }
}
