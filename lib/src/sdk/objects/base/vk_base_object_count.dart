class VKBaseObjectCount {
  /// Items count.
  final int count;

  const VKBaseObjectCount({
    this.count,
  }) : assert(count == null || count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseObjectCount.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKBaseObjectCount(
      count: map['count'] as int,
    );
  }
}
