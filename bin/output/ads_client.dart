import 'package:meta/meta.dart';

class AdsClient {
  /// Client's total limit, rubles.
  final String allLimit;

  /// Client's day limit, rubles.
  final String dayLimit;

  /// Client ID.
  final int id;

  /// Client name.
  final String name;

  const AdsClient({
    @required this.allLimit,
    @required this.dayLimit,
    @required this.id,
    @required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all_limit': allLimit,
      'day_limit': dayLimit,
      'id': id,
      'name': name,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AdsClient.fromMap(Map<String, dynamic> map) {
    return AdsClient(
      allLimit: map['all_limit'] as String,
      dayLimit: map['day_limit'] as String,
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
}
