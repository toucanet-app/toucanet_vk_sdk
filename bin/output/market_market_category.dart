import 'market_section.dart';
import 'package:meta/meta.dart';

class MarketMarketCategory {
  /// Category ID.
  final int id;

  /// Category name.
  final String name;

  final MarketSection section;

  const MarketMarketCategory({
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

  factory MarketMarketCategory.fromMap(Map<String, dynamic> map) {
    return MarketMarketCategory(
      id: map['id'] as int,
      name: map['name'] as String,
      section: MarketSection.fromMap(map['section']),
    );
  }
}
