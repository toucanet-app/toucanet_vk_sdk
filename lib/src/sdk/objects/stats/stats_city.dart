class VKStatsCity {
  /// Visitors number.
  final int count;

  /// City name.
  final String name;

  /// City ID.
  final int value;

  const VKStatsCity({
    this.count,
    this.name,
    this.value,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'name': name,
      'value': value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKStatsCity.fromMap(Map<String, dynamic> map) {
    return VKStatsCity(
      count: map['count'] as int,
      name: map['name'] as String,
      value: map['value'] as int,
    );
  }
}
