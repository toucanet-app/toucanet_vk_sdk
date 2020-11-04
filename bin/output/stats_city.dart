class StatsCity {
  /// Visitors number.
  final int count;

  /// City name.
  final String name;

  /// City ID.
  final int value;

  const StatsCity({
    this.count,
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'name': name,
      'value': value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory StatsCity.fromMap(Map<String, dynamic> map) {
    return StatsCity(
      count: map['count'] as int,
      name: map['name'] as String,
      value: map['value'] as int,
    );
  }
}
