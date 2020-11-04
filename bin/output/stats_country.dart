

class StatsCountry {
  /// Country code.
  final String code;

  /// Visitors number.
  final int count;

  /// Country name.
  final String name;

  /// Country ID.
  final int value;

  const StatsCountry({
    this.code,
    this.count,
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'count': count,
      'name': name,
      'value': value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory StatsCountry.fromMap(Map<String, dynamic> map) {
    return StatsCountry(
      code: map['code'] as String,
      count: map['count'] as int,
      name: map['name'] as String,
      value: map['value'] as int,
    );
  }
}
