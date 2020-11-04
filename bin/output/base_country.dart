import 'package:meta/meta.dart';

class BaseCountry {
  /// Country ID.
  final int id;

  /// Country title.
  final String title;

  const BaseCountry({
    @required this.id,
    @required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory BaseCountry.fromMap(Map<String, dynamic> map) {
    return BaseCountry(
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }
}
