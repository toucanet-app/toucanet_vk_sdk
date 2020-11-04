import 'base_object_with_name.dart';
import 'package:meta/meta.dart';

class AdsCategory {
  /// Category ID.
  final int id;

  /// Category name.
  final String name;

  final List<BaseObjectWithName> subcategories;

  const AdsCategory({
    @required this.id,
    @required this.name,
    this.subcategories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'subcategories': subcategories?.map((item) => item?.toMap()),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AdsCategory.fromMap(Map<String, dynamic> map) {
    return AdsCategory(
      id: map['id'] as int,
      name: map['name'] as String,
      subcategories: map['subcategories']?.map((item) => BaseObjectWithName.fromMap(item)),
    );
  }
}
