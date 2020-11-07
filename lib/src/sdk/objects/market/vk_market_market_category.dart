import 'package:meta/meta.dart';

import 'vk_market_section.dart';

class VKMarketMarketCategory {
  /// Category ID.
  final int id;

  /// Category name.
  final String name;

  final VKMarketSection section;

  const VKMarketMarketCategory({
    @required this.id,
    @required this.name,
    @required this.section,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'section': section?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMarketMarketCategory.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMarketMarketCategory(
      id: map['id'] as int,
      name: map['name'] as String,
      section: VKMarketSection.fromMap(map['section']),
    );
  }
}
