class VKWallViews {
  /// Count.
  final int count;

  const VKWallViews({
    this.count,
  }) : assert(count == null || count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKWallViews.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKWallViews(
      count: map['count'] as int,
    );
  }
}
