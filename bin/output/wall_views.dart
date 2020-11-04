class WallViews {
  /// Count.
  final int count;

  const WallViews({
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory WallViews.fromMap(Map<String, dynamic> map) {
    return WallViews(
      count: map['count'] as int,
    );
  }
}
