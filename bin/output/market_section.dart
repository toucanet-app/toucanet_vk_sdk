import 'package:meta/meta.dart';

class MarketSection {
  /// Section ID.
  final int id;

  /// Section name.
  final String name;

  const MarketSection({
    @required this.id,
    @required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory MarketSection.fromMap(Map<String, dynamic> map) {
    return MarketSection(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
}
