class VKBaseObjectCount {
  /// Items count.
  final int count;

  const VKBaseObjectCount({
    this.count,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseObjectCount.fromMap(Map<String, dynamic> map) {
    return VKBaseObjectCount(
      count: map['count'] as int,
    );
  }
}
