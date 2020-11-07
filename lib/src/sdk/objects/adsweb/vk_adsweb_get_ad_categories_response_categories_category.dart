import 'package:meta/meta.dart';

class VKAdswebGetAdCategoriesResponseCategoriesCategory {
  final int id;

  final String name;

  const VKAdswebGetAdCategoriesResponseCategoriesCategory({
    @required this.id,
    @required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAdswebGetAdCategoriesResponseCategoriesCategory.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAdswebGetAdCategoriesResponseCategoriesCategory(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
}
