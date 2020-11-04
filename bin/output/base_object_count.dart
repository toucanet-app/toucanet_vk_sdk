

class BaseObjectCount {
  /// Items count.
  final int count;

  const BaseObjectCount({
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory BaseObjectCount.fromMap(Map<String, dynamic> map) {
    return BaseObjectCount(
      count: map['count'] as int,
    );
  }
}
