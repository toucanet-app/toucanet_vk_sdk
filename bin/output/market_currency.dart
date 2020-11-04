import 'package:meta/meta.dart';

class MarketCurrency {
  /// Currency ID.
  final int id;

  /// Currency sign.
  final String name;

  const MarketCurrency({
    @required this.id,
    @required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory MarketCurrency.fromMap(Map<String, dynamic> map) {
    return MarketCurrency(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
}
