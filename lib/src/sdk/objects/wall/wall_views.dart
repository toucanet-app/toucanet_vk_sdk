class VKWallViews {
  /// Count.
  final int count;

  const VKWallViews({
    this.count,
  }) : assert(count >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKWallViews.fromMap(Map<String, dynamic> map) {
    return VKWallViews(
      count: map['count'] as int,
    );
  }
}
