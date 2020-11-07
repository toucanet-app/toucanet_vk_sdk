import 'package:meta/meta.dart';

class VKMarketCurrency {
  /// Currency ID.
  final int id;

  /// Currency sign.
  final String name;

  const VKMarketCurrency({
    @required this.id,
    @required this.name,
  }) : assert(id >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKMarketCurrency.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKMarketCurrency(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
}
