import 'package:meta/meta.dart';

class AdswebGetAdCategoriesResponseCategoriesCategory {
  final int id;

  final String name;

  const AdswebGetAdCategoriesResponseCategoriesCategory({
    @required this.id,
    @required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AdswebGetAdCategoriesResponseCategoriesCategory.fromMap(Map<String, dynamic> map) {
    return AdswebGetAdCategoriesResponseCategoriesCategory(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
}
