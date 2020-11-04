class StoriesClickableArea {
  final int x;

  final int y;

  const StoriesClickableArea({
    this.x,
    this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': x,
      'y': y,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory StoriesClickableArea.fromMap(Map<String, dynamic> map) {
    return StoriesClickableArea(
      x: map['x'] as int,
      y: map['y'] as int,
    );
  }
}
